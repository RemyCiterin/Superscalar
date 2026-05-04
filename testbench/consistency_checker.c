#include <stdbool.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <assert.h>

typedef enum {
  // We sent a load request to the memory system
  LOAD,
  // We sent a store request to the memory system
  STORE,
  // Read the response associated with the last memory request: in case of a load it read the
  // loaded value, zero otherwise. As the write events store their ID, the value read during a
  // response event preceded by a load is the ID of the last store event to that address.
  RESPONSE
} event_kind_t;

typedef struct {
  event_kind_t kind;
  // Memory address of the event in case of a load or a store
  int address;
  // ID of the previous load/store event in program order
  int pred_po;
  // Thread that generated the event
  int thread;
  // Color: used by the topological sort algorithm
  int color;
  // initialy for a response event after a load: contains the ID of the corresponding store
  // then after calling `build_read_from`, the load in question contains this ID too
  int data;
} event_t;

///////////////////////////////////////////////////////////////////////////////////////////////////
/// Build the `read-from` relation: associate to each load the index of the corresponding store, or
/// `-1` if we read from the initial state.
///////////////////////////////////////////////////////////////////////////////////////////////////
static bool build_read_from(event_t* list, size_t size, size_t threads) {
  int* last_load_id = (int*)calloc(threads, sizeof(int));
  for (int i=0; i < threads; i++) last_load_id[i] = -1;
  int err = false;

  for (int i=0; i < size; i++) {
    event_t event = list[i];
    if (event.data == 0xAAAAAAAA) event.data = -1;

    if (event.kind == RESPONSE && event.data != -1 && last_load_id[event.thread] >= 0) {
      if (list[event.data].kind != STORE) err = true;
    }

    if (event.kind == RESPONSE && last_load_id[event.thread] >= 0) {
      assert(list[last_load_id[event.thread]].kind == LOAD);
      list[last_load_id[event.thread]].data = event.data;
    }

    if (event.kind != RESPONSE && last_load_id[event.thread] >= 0) {
      list[last_load_id[event.thread]].kind = RESPONSE;
    }

    if (event.kind == LOAD) last_load_id[event.thread] = i;
    else last_load_id[event.thread] = -1;
  }

  for (int i=0; i < threads; i++) if (last_load_id[i] >= 0) {
    assert(list[last_load_id[i]].kind == LOAD);
    list[last_load_id[i]].kind = RESPONSE;
  }

  free(last_load_id);
  return err;
}

///////////////////////////////////////////////////////////////////////////////////////////////////
/// Build the `program-order` relation: associate to each load/store event the previous event load/
/// store event of the same thread
///////////////////////////////////////////////////////////////////////////////////////////////////
static void build_program_order(event_t* list, size_t size, size_t threads) {
  int* last_event_id = (int*)calloc(threads, sizeof(int));
  for (int i=0; i < threads; i++) last_event_id[i] = -1;

  for (int i=0; i < size; i++) {
    list[i].pred_po = last_event_id[list[i].thread];

    if (list[i].kind != RESPONSE) {
      last_event_id[list[i].thread] = i;
    }
  }

  free(last_event_id);
}


static bool topo(int root, event_t* list, size_t size, size_t threads) {
  if (root == -1 || list[root].kind == RESPONSE) return false;
  if (list[root].color == 1) return false;
  if (list[root].color == 2) return true;
  list[root].color = 2;

  // explore previous ID in program order
  int pred = list[root].pred_po;
  if (topo(pred, list, size, threads)) return true;

  pred = list[root].data;
  if (list[root].kind == LOAD && topo(pred, list, size, threads)) return true;

  list[root].color = 1;
  return false;
}

static bool check_consistency(event_t *list, size_t size, size_t threads) {
  if (!list) return false;
  bool err = false;

  err |= build_read_from(list, size, threads);
  build_program_order(list, size, threads);

  for (int i=0; i < size; i = i + 1) {
    if (topo(i, list, size, threads)) err = true;
  }

  return err;
}

typedef struct {
  event_t* ptr;
  size_t len;
  size_t capa;
} event_list_t;

event_list_t global_list = {
  .ptr = NULL,
  .capa = 0,
  .len = 0
};

void clear_checker() {
  if (global_list.ptr) free(global_list.ptr);
  global_list.ptr = NULL;
  global_list.capa = 0;
  global_list.len = 0;
}

void add_event_to_checker
  (int thread, bool is_load, bool is_store, int address, int data)
{
  // Initialize empty global_list
  if (!global_list.ptr) {
    global_list.ptr = calloc(256, sizeof(event_t));
    global_list.capa = 256;
    global_list.len = 0;
  }

  // Increase the size of the global_list
  if (global_list.len + 1 >= global_list.capa) {
    event_t* new_ptr = calloc(2 * global_list.capa, sizeof(event_t));
    memcpy(new_ptr, global_list.ptr, global_list.len * sizeof(event_t));

    free(global_list.ptr);
    global_list.ptr = new_ptr;
    global_list.capa *= 2;
  }

  int id = global_list.len;

  if (is_load) global_list.ptr[id].kind = LOAD;
  else if (is_store) global_list.ptr[id].kind = STORE;
  else global_list.ptr[id].kind = RESPONSE;
  global_list.ptr[id].address = address;
  global_list.ptr[id].thread = thread;
  global_list.ptr[id].data = data;
  global_list.ptr[id].color = 0;
  global_list.len++;
}

bool run_checker(int threads) {
  return !check_consistency(global_list.ptr, global_list.len, threads);
}

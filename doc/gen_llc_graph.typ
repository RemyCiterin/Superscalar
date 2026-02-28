#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge, shapes, draw
// #import "@preview/cetz:0.4.2"

#set page(width: 20cm, height: 8cm)

// Fifo shape declaration
#let fifo(node, extrude, dir: "r") = {
  let (w, h) = node.size.map(i => i/2+extrude)
  let horizontal = dir == "r" or dir == "l"
  let vertical = dir == "u" or dir == "d"

  if horizontal {
    draw.group({
      draw.line(
        if dir == "r" {(-w/3, -h)} else {(-w,-h)},
        if dir == "r" {(-w/3, +h)} else {(-w,+h)},
        if dir == "r" {(+w, +h)} else {(+w/3, +h)},
        if dir == "r" {(+w, -h)} else {(+w/3, -h)},
      )

      draw.line((-w,-h), (+w,-h))
      draw.line((-w,+h), (+w,+h))
      if dir == "r" { draw.line((w/3,-h), (w/3,+h)) }
      else { draw.line((-w/3,-h), (-w/3,+h)) }
    })
  } else {
    draw.group({
      draw.line(
        if dir == "u" {(-w, -h/3)} else {(-w,-h)},
        if dir == "u" {(+w, -h/3)} else {(+w,-h)},
        if dir == "u" {(+w, +h)} else {(+w, +h/3)},
        if dir == "u" {(-w, +h)} else {(-w, +h/3)},
      )

      draw.line((-w,-h), (-w,+h))
      draw.line((+w,-h), (+w,+h))

      if dir == "u" { draw.line((-w,h/3), (+w,h/3)) }
      else { draw.line((-w,-h/3), (+w,-h/3)) }
    })
  }
}


#let llc = {
  set text(weight: "bold")
  diagram(
  	edge-stroke: 1pt,
    node-stroke: 1pt,
    node-shape: shapes.rect,
  	node-corner-radius: 1pt,
    node-fill: gray.lighten(60%),
  	edge-corner-radius: 8pt,
  	mark-scale: 100%,
    spacing: 10pt,

    node((1, -2), [Transaction\ Queue], name: <tq>),
    node((1, 0), [Pipeline\ Enq Rules], name: <pipe-enq>),
    node((3, 0), [Pipeline\ Deq Rules], name: <pipe-deq>),
    //edge(<tq>, <pipe-enq>, "->"),
    edge(<pipe-enq>, <pipe-deq>, "->"),
    edge(<pipe-deq>, "u,u,l,l", "->", label: "free"),
    edge(<tq>, "l,d,d,r", "->", label: "retry"),
    edge(<pipe-enq>, <tq>, "->", label: "allocate", label-sep: -50pt),

    let fifos_y = 2,
    node((-4,fifos_y), shape: fifo.with(dir: "u"), width: 0.5cm, height: 1cm, name: <fifo-in-a>),
    node((-3,fifos_y), shape: fifo.with(dir: "u"), width: 0.5cm, height: 1cm, name: <fifo-in-c>),
    node((-2,fifos_y), shape: fifo.with(dir: "u"), width: 0.5cm, height: 1cm, name: <fifo-in-d>),
    node((-1,fifos_y), shape: fifo.with(dir: "u"), width: 0.5cm, height: 1cm, name: <fifo-in-e>),
    edge(<fifo-in-a>, "u,r,r,r,r,r,u", "->"),
    edge(<fifo-in-c>, "u,r,r,r,r,u", "->"),
    edge(<fifo-in-d>, "u,r,r,r,u", "->"),
    edge(<fifo-in-e>, "u,r,r,u", "->"),

    //edge(<fifo-in-a>, "u,u,r,r,r", "->", label: "allocate"),

    let channels_y = 4,
    node((-4,channels_y), [In A], stroke: none, fill: none, name: <in-a>),
    node((-3,channels_y), [In C], stroke: none, fill: none, name: <in-c>),
    node((-2,channels_y), [In D], stroke: none, fill: none, name: <in-d>),
    node((-1,channels_y), [In E], stroke: none, fill: none, name: <in-e>),
    edge(<in-a>, <fifo-in-a>, "->"),
    edge(<in-c>, <fifo-in-c>, "->"),
    edge(<in-d>, <fifo-in-d>, "->"),
    edge(<in-e>, <fifo-in-e>, "->"),

    node((4,fifos_y), shape: fifo.with(dir: "d"), width: 0.5cm, height: 1cm, name: <fifo-out-a>),
    node((5,fifos_y), shape: fifo.with(dir: "d"), width: 0.5cm, height: 1cm, name: <fifo-out-b>),
    node((6,fifos_y), shape: fifo.with(dir: "d"), width: 0.5cm, height: 1cm, name: <fifo-out-d>),
    edge(<pipe-deq>, "d,r,d", "->"),
    edge(<pipe-deq>, "d,r,r,d", "->"),
    edge(<pipe-deq>, "d,r,r,r,d", "->"),

    node((4,channels_y), [Out A], stroke: none, fill: none, name: <out-a>),
    node((5,channels_y), [Out B], stroke: none, fill: none, name: <out-b>),
    node((6,channels_y), [Out D], stroke: none, fill: none, name: <out-d>),
    edge(<fifo-out-a>, <out-a>, "->"),
    edge(<fifo-out-b>, <out-b>, "->"),
    edge(<fifo-out-d>, <out-d>, "->"),
  )
}

#llc

#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge, shapes

#set page(width: 12cm, height: 12cm)

#let pipeline = {

  set text(weight: "bold")
  diagram(
  	edge-stroke: 1pt,
    node-stroke: 1pt,
    node-shape: shapes.rect,
  	node-corner-radius: 1pt,
    node-fill: gray.lighten(60%),
  	edge-corner-radius: 8pt,
  	mark-scale: 100%,
    spacing: 15pt,


    let redirect = red,
    let forward = blue,
    let wakeup = purple,

    node((0,0), [#text(fill: redirect, [Branch predict])\ Fetch (L1i)], name: <fetch>),
    node((0,1), [Decode], name: <decode>),
    node((0,2), [Register read\ #text(fill: forward, [Early Issue])], name: <rrd>),
    node((0,3), [Early ALU / AGU\ #text(fill: wakeup, [Late issue])], name: <exec1>),
    node((0,4), [Late ALU\ LSU (L1d)], name: <exec2>),
    node((0,5), [Write-back], name: <wb>, shape: shapes.rect),

    edge(<exec1>, "l,u,r", "->", stroke: forward),
    edge(<exec2>, "l,u,u,r", "->", stroke: forward),
    edge(
      <wb>, "l,u,u,u,r", "->", stroke: forward, label-sep: -30pt, label-pos: 0.5,
      rotate(-90deg, text(fill: forward, [forward]))
    ),

    edge(<exec2>, "r,u,l", "->", stroke: wakeup),
    edge(
      <wb>, "r,u,u,l", "->", stroke: wakeup, label-sep: -10pt, label-pos: 0.5,
      rotate(-90deg, text(fill: wakeup, [forward]))
    ),

    edge(
      <wb>, "d,l,l,l,u,u,u,u,u,u,r,r,r", "->", stroke: redirect, label-sep: -30pt, label-pos: 0.55,
      rotate(-90deg, text(fill: redirect, [redirect])),
    ),

    edge(<fetch>, <decode>, "=>"),
    edge(<decode>, <rrd>, "=>"),
    edge(<rrd>, <exec1>, "=>"),
    edge(<exec1>, <exec2>, "=>"),
    edge(<exec2>, <wb>, "=>"),
  )
}

#pipeline

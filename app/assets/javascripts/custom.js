
var effect = ["wave", "zipper", "curtain"];

$(document).ready( function(){
  $('#slideshowHolder').jqFancyTransitions({ width: 800, height: 900, effect: effect[Math.floor(Math.random()*3)]
    , stripDelay: .1, strips: 20 });
});

$.getJSON('/api/charts/weight.json', function(data){
  new Chartist.Line('.ct-chart', data.chart, {
    low: data.options.low,
    showArea: true
  });
});

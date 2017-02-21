import 'package:d3js/d3_v3.dart' as d3;
import 'package:js/js.dart' as js;

// adapted from https://bl.ocks.org/mbostock/3885304
main() {
  print("Using d3 version ${d3.version}");
  var selection = d3.select('body');

  var margin = {'top': 20, 'right': 20, 'bottom': 30, 'left': 40};
  var width = 960 - margin['left'] - margin['right'];
  var height = 500 - margin['top'] - margin['bottom'];

  var x = d3.ordinal().rangeRoundBands([0, width], .1);

  var y = d3.linear()..range([height, 0]);

  var xAxis = d3.axis()
    ..scale(x)
    ..orient("bottom");
  var yAxis = d3.axis()
    ..scale(y)
    ..orient("left")
    ..ticks([10, "%"]);

  var svg = selection.append('svg')
    ..attr("width", width + margin['left'] + margin['right'])
    ..attr("height", height + margin['top'] + margin['bottom'])
    ..append('g')
    ..attr('transform', 'translate(${margin['left']},${margin['top']})');

  d3.tsv('data.tsv', (err, List data) {
    print(data);
    x.domain(data.map(js.allowInterop((d) {
      print(d.first);
      print(d["letter"]);
      return d['letter'];
    })).toList());
    y.domain([0, d3.max(data, js.allowInterop((d, i) => d['frequency']))]);

    svg.append("g")
      ..attr("class", "x axis")
      ..attr("transform", "translate(0,$height)")
      ..call(xAxis);

    svg.append("g")
      ..attr("class", "y axis").call(yAxis)
      ..append("text").attr("transform", "rotate(-90)")
      ..attr("y", 6)
      ..attr("dy", ".71em")
      ..style("text-anchor", "end")
      ..text("Frequency");

    svg.selectAll(".bar")
      ..data(data).enter()
      ..append("rect")
      ..attr("class", "bar")
      ..attr("x", (d, i, j) => x(d["letter"]))
      ..attr("width", x.rangeBand())
      ..attr("y", (d, i, j) => y(d["frequency"]))
      ..attr("height", (d, i, j) => height - y(d["frequency"]));
  });
}

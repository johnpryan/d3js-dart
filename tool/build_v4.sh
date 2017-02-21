#!/usr/bin/env bash

# Install the v4 definitions by running:
# npm install @types/d3 --save

dart_js_facade_gen node_modules/@types/d3/index.d.ts > lib/d3.dart
dart_js_facade_gen node_modules/@types/d3-array/index.d.ts > lib/d3-array.dart
dart_js_facade_gen node_modules/@types/d3-axis/index.d.ts > lib/d3-axis.dart
dart_js_facade_gen node_modules/@types/d3-brush/index.d.ts > lib/d3-brush.dart
dart_js_facade_gen node_modules/@types/d3-chord/index.d.ts > lib/d3-chord.dart
dart_js_facade_gen node_modules/@types/d3-collection/index.d.ts > lib/d3-collection.dart
dart_js_facade_gen node_modules/@types/d3-color/index.d.ts > lib/d3-color.dart
dart_js_facade_gen node_modules/@types/d3-dispatch/index.d.ts > lib/d3-dispatch.dart
dart_js_facade_gen node_modules/@types/d3-drag/index.d.ts > lib/d3-drag.dart
dart_js_facade_gen node_modules/@types/d3-dsv/index.d.ts > lib/d3-dsv.dart
dart_js_facade_gen node_modules/@types/d3-ease/index.d.ts > lib/d3-ease.dart
dart_js_facade_gen node_modules/@types/d3-force/index.d.ts > lib/d3-force.dart
dart_js_facade_gen node_modules/@types/d3-format/index.d.ts > lib/d3-format.dart
dart_js_facade_gen node_modules/@types/d3-geo/index.d.ts > lib/d3-geo.dart
dart_js_facade_gen node_modules/@types/d3-hierarchy/index.d.ts > lib/d3-hierarchy.dart
dart_js_facade_gen node_modules/@types/d3-interpolate/index.d.ts > lib/d3-interpolate.dart
dart_js_facade_gen node_modules/@types/d3-path/index.d.ts > lib/d3-path.dart
dart_js_facade_gen node_modules/@types/d3-polygon/index.d.ts > lib/d3-polygon.dart
dart_js_facade_gen node_modules/@types/d3-quadtree/index.d.ts > lib/d3-quadtree.dart
dart_js_facade_gen node_modules/@types/d3-queue/index.d.ts > lib/d3-queue.dart
dart_js_facade_gen node_modules/@types/d3-random/index.d.ts > lib/d3-random.dart
dart_js_facade_gen node_modules/@types/d3-request/index.d.ts > lib/d3-request.dart
dart_js_facade_gen node_modules/@types/d3-scale/index.d.ts > lib/d3-scale.dart
dart_js_facade_gen node_modules/@types/d3-selection/index.d.ts > lib/d3-selection.dart
dart_js_facade_gen node_modules/@types/d3-shape/index.d.ts > lib/d3-shape.dart
dart_js_facade_gen node_modules/@types/d3-time/index.d.ts > lib/d3-time.dart
dart_js_facade_gen node_modules/@types/d3-time-format/index.d.ts > lib/d3-time-format.dart
dart_js_facade_gen node_modules/@types/d3-timer/index.d.ts > lib/d3-timer.dart
dart_js_facade_gen node_modules/@types/d3-transition/index.d.ts > lib/d3-transition.dart
dart_js_facade_gen node_modules/@types/d3-voronoi/index.d.ts > lib/d3-voronoi.dart
dart_js_facade_gen node_modules/@types/d3-zoom/index.d.ts > lib/d3-zoom.dart
dart_js_facade_gen node_modules/@types/geojson/index.d.ts > lib/geojson.dart


@JS()
library node_modules._types.d3_chord;

import "package:js/js.dart";
import "package:func/func.dart";
import "dart:html" show CanvasRenderingContext2D;

/// Type definitions for D3JS d3-chord module 1.0
/// Project: https://github.com/d3/d3-chord/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// Last module patch version validated against: 1.0.3
/// ---------------------------------------------------------------------
/// Chord
/// ---------------------------------------------------------------------
/// A chord subgroup serving as source or target of a chord between two nodes i an j (where i may be equal to j).
@anonymous
@JS()
abstract class ChordSubgroup {
  /// Start angle of the chord subgroup in radians
  external num get startAngle;
  external set startAngle(num v);

  /// End angle of the chord subgroup in radians
  external num get endAngle;
  external set endAngle(num v);

  /// The flow value in matrix[i][j] from node i to node j
  external num get value;
  external set value(num v);

  /// The node index i
  external num get index;
  external set index(num v);

  /// The node index j
  external num get subindex;
  external set subindex(num v);
  external factory ChordSubgroup(
      {num startAngle, num endAngle, num value, num index, num subindex});
}

/// A chord represents the combined bidirectional flow between two nodes i and j (where i may be equal to j)
@anonymous
@JS()
abstract class Chord {
  /// Chord subgroup constituting the sodurce of Chord
  external ChordSubgroup get source;
  external set source(ChordSubgroup v);

  /// Chord subgroup constituting the Target of Chord
  external ChordSubgroup get target;
  external set target(ChordSubgroup v);
  external factory Chord({ChordSubgroup source, ChordSubgroup target});
}

/// A chord group for a given node i representing the combined outflow for node i,
/// corresponding to the elements matrix[i][0 … n - 1].
@anonymous
@JS()
abstract class ChordGroup {
  /// The start angle of the chord group in radians
  external num get startAngle;
  external set startAngle(num v);

  /// The end angle of the chord group in radians
  external num get endAngle;
  external set endAngle(num v);

  /// The total outgoing flow value for node i
  external num get value;
  external set value(num v);

  /// The node index i
  external num get index;
  external set index(num v);
  external factory ChordGroup(
      {num startAngle, num endAngle, num value, num index});
}

/// An array of chords, where each chord represents the combined bidirectional flow between two nodes i and j (where i may be equal to j).
/// The chords are based on a (n x n) matrix of flows between nodes.
/// The chords are typically passed to d3.ribbon to display the network relationships.
/// The returned array includes only chord objects for which the value matrix[i][j] or matrix[j][i] is non-zero.
/// Furthermore, the returned array only contains unique chords: a given chord ij represents the bidirectional flow from i to j and from j to i,
/// and does not contain a duplicate chord ji; i and j are chosen such that the chord’s source always represents the larger of matrix[i][j] and matrix[j][i].
/// In other words, chord.source.index equals chord.target.subindex, chord.source.subindex equals chord.target.index,
/// chord.source.value is greater than or equal to chord.target.value, and chord.source.value is always greater than zero.
@anonymous
@JS()
abstract class Chords implements List<Chord> {
  /// An array of length n, where each group represents the combined outflow for node i,
  /// corresponding to the elements matrix[i][0 … n - 1]
  external List<ChordGroup> get groups;
  external set groups(List<ChordGroup> v);
}

/// A D3 chord diagram Layout to visualize relationships or network flow with an aesthetically-pleasing circular layout.
/// The relationships are represented as a square matrix of size n×n, where the matrix represents the directed flow amongst a network (a complete digraph) of n nodes.
@anonymous
@JS()
abstract class ChordLayout {
  /// Computes the chord layout for the specified square matrix of size n×n, where the matrix represents the directed flow amongst a network (a complete digraph) of n nodes.
  /// where each element matrix[i] is an array of n numbers, where each matrix[i][j] represents the flow from the ith node in the network to the jth node.
  /// Each number matrix[i][j] must be nonnegative, though it can be zero if there is no flow from node i to node j.
  external Chords call(List<List<num>> matrix);

  /// Returns the current pad angle in radians, which defaults to zero.
  /*external num padAngle();*/
  /// Sets the pad angle between adjacent groups to the specified number in radians and returns this chord layout.
  /// The default is zero.
  /*external ChordLayout padAngle(num angle);*/
  external dynamic /*num|ChordLayout*/ padAngle([num angle]);

  /// Returns the current group comparator, which defaults to null.
  /*external Func2<num, num, num>|Null sortGroups();*/
  /// Removes the current group comparator and returns this chord layout.
  /*external ChordLayout sortGroups(Null compare);*/
  /// Sets the group comparator to the specified function and returns this chord layout.
  /// If the group comparator is non-null, it is used to sort the groups by their total outflow. See also d3.ascending and d3.descending.
  /*external ChordLayout sortGroups(num compare(num a, num b));*/
  external dynamic /*Func2<num, num, num>|ChordLayout*/ sortGroups(
      [num compare(num a, num b)]);

  /// Returns the current subgroup comparator, which defaults to null.
  /*external Func2<num, num, num>|Null sortSubgroups();*/
  /// Removes the current subgroup comparator and returns this chord layout.
  /*external ChordLayout sortSubgroups(Null compare);*/
  /// Sets the subgroup comparator to the specified function and returns this chord layout.
  /// If the subgroup comparator is non-null, it is used to sort the subgroups corresponding to matrix[i][0 … n - 1]
  /// for a given group i by their total outflow. See also d3.ascending and d3.descending.
  /*external ChordLayout sortSubgroups(num compare(num a, num b));*/
  external dynamic /*Func2<num, num, num>|ChordLayout*/ sortSubgroups(
      [num compare(num a, num b)]);

  /// Returns the current chord comparator, which defaults to null.
  /*external Func2<num, num, num>|Null sortChords();*/
  /// Removes the current chord comparator and returns this chord layout.
  /*external ChordLayout sortChords(Null compare);*/
  /// Sets the chord comparator to the specified function and returns this chord layout.
  /// If the chord comparator is non-null, it is used to sort the chords by their combined flow; this only affects the z-order of the chords.
  /// See also d3.ascending and d3.descending.
  /*external ChordLayout sortChords(num compare(num a, num b));*/
  external dynamic /*Func2<num, num, num>|ChordLayout*/ sortChords(
      [num compare(num a, num b)]);
}

/// Constructs a new chord diagram layout with the default settings.
@JS()
external ChordLayout chord();

/// ---------------------------------------------------------------------
/// Ribbon
/// ---------------------------------------------------------------------
/// A minimal interface to support the default accessors used by RibbonGenerator for properties of
/// source and target objects of a Ribbon.
/// (Corresponds to ChordSubgroup)
@anonymous
@JS()
abstract class RibbonSubgroup {
  /// Start angle of the ribbon subgroup in radians
  external num get startAngle;
  external set startAngle(num v);

  /// End angle of the ribbon subgroup in radians
  external num get endAngle;
  external set endAngle(num v);

  /// Radius of the ribbon subgroup
  external num get radius;
  external set radius(num v);
  external factory RibbonSubgroup({num startAngle, num endAngle, num radius});
}

/// A minimal interface to support the default source and target accessors used by RibbonGenerator.
/// (Corresponds to Chord)
@anonymous
@JS()
abstract class Ribbon {
  /// Ribbon subgroup constituting the source of the Ribbon
  external RibbonSubgroup get source;
  external set source(RibbonSubgroup v);

  /// Ribbon subgroup constituting the target of the Ribbon
  external RibbonSubgroup get target;
  external set target(RibbonSubgroup v);
  external factory Ribbon({RibbonSubgroup source, RibbonSubgroup target});
}

/// A ribbon generator to suport rendering of chords in a chord diagram.
/// The first generic corresponds to the type of the "this" context within which the ribbon generator and its accessor functions will be invoked.
/// The second generic corresponds to the datum type representing a chord for which the ribbon is to be generated. The default type is Ribbon.
/// The third generic corresponds to the datum type of the chord subgroup, i.e. source or target of the cord. The default type is RibbonSubgroup.
@anonymous
@JS()
abstract class RibbonGenerator<This, RibbonDatum, RibbonSubgroupDatum> {
  /// Generates a ribbon for the given arguments.
  /// IMPORTANT: If the ribbon generator has been configured with a rendering context,
  /// then the ribbon is rendered to this context as a sequence of path method calls and this function returns void.
  /// The "this" context within which this function is invoked, will be the context within which the accessor methods of the generator are invoked.
  /// All arguments passed into this function, will be passed to the accessor functions of the generator.
  /*external void call(This JS$this, RibbonDatum d,
    [dynamic args1,
    dynamic args2,
    dynamic args3,
    dynamic args4,
    dynamic args5]);*/
  /// Generates a ribbon for the given arguments.
  /// IMPORTANT: If the rendering context of the ribbon generator is null,
  /// then the ribbon is returned as a path data string.
  /// The "this" context within which this function is invoked, will be the context within which the accessor methods of the generator are invoked.
  /// All arguments passed into this function, will be passed to the accessor functions of the generator.
  /*external String|Null call(This JS$this, RibbonDatum d, [dynamic args1, dynamic args2, dynamic args3, dynamic args4, dynamic args5]);*/
  external dynamic /*Null|String*/ call(
      /*This this*/ RibbonDatum d, List<dynamic> args);

  /// Returns the current source accessor, which defaults to a function returning the "source" property of the first argument passed into the accessor.
  /*external (this: This, d: RibbonDatum, ...args: any[]) => RibbonSubgroupDatum source();*/
  /// Sets the source accessor to the specified function and returns this ribbon generator.
  /// receives the same arguments that were passed into the ribbon generator.
  /*external RibbonGenerator source((this: This, d: RibbonDatum, ...args: any[]) => RibbonSubgroupDatum source);*/
  external dynamic /*(this: This, d: RibbonDatum, ...args: any[]) => RibbonSubgroupDatum|RibbonGenerator*/ source(
      [Function /*(this: This, d: RibbonDatum, ...args: any[]) => RibbonSubgroupDatum*/ source]);

  /// Returns the current target accessor, which defaults to a function returning the "target" property of the first argument passed into the accessor.
  /*external (this: This, d: RibbonDatum, ...args: any[]) => RibbonSubgroupDatum target();*/
  /// Sets the target accessor to the specified function and returns this ribbon generator.
  /// receives the same arguments that were passed into the ribbon generator.
  /*external RibbonGenerator target((this: This, d: RibbonDatum, ...args: any[]) => RibbonSubgroupDatum target);*/
  external dynamic /*(this: This, d: RibbonDatum, ...args: any[]) => RibbonSubgroupDatum|RibbonGenerator*/ target(
      [Function /*(this: This, d: RibbonDatum, ...args: any[]) => RibbonSubgroupDatum*/ target]);

  /// Returns the current radius accessor, which defaults to a function returning the "radius" property (assumed to be a number) of the source or
  /// target object returned by the source or target accessor, respectively.
  /*external (this: This, d: RibbonSubgroupDatum, ...args: any[]) => number radius();*/
  /// Sets the radius to a fixed number and returns this ribbon generator.
  /*external RibbonGenerator radius(num radius);*/
  /// Sets the radius accessor to the specified function and returns this ribbon generator.
  /// receives as the first argument the source or target object returned by the respective source or target accessor function of the generator. It is also passed any additional arguments that were passed
  /// into the generator, with the exception of the first element representing the chord datum itself. The function returns the radius value.
  /*external RibbonGenerator radius((this: This, d: RibbonSubgroupDatum, ...args: any[]) => number radius);*/
  external dynamic /*(this: This, d: RibbonSubgroupDatum, ...args: any[]) => number|RibbonGenerator*/ radius(
      [dynamic /*num|(this: This, d: RibbonSubgroupDatum, ...args: any[]) => number*/ radius]);

  /// Returns the current start angle accessor, which defaults to a function returning the "startAngle" property (assumed to be a number in radians) of the source or
  /// target object returned by the source or target accessor, respectively.
  /*external (this: This, d: RibbonSubgroupDatum, ...args: any[]) => number startAngle();*/
  /// Sets the start angle to a fixed number in radians and returns this ribbon generator.
  /*external RibbonGenerator startAngle(num angle);*/
  /// Sets the start angle accessor to the specified function and returns this ribbon generator.
  /// receives as the first argument the source or target object returned by the respective source or target accessor function of the generator. It is also passed any additional arguments that were passed
  /// into the generator, with the exception of the first element representing the chord datum itself. The function returns the start angle in radians.
  /*external RibbonGenerator startAngle((this: This, d: RibbonSubgroupDatum, ...args: any[]) => number angle);*/
  external dynamic /*(this: This, d: RibbonSubgroupDatum, ...args: any[]) => number|RibbonGenerator*/ startAngle(
      [dynamic /*num|(this: This, d: RibbonSubgroupDatum, ...args: any[]) => number*/ angle]);

  /// Returns the current end angle accessor, which defaults to a function returning the "endAngle" property (assumed to be a number in radians) of the source or
  /// target object returned by the source or target accessor, respectively.
  /*external (this: This, d: RibbonSubgroupDatum, ...args: any[]) => number endAngle();*/
  /// Sets the end angle to a fixed number in radians and returns this ribbon generator.
  /*external RibbonGenerator endAngle(num angle);*/
  /// Sets the end angle accessor to the specified function and returns this ribbon generator.
  /// receives as the first argument the source or target object returned by the respective source or target accessor function of the generator. It is also passed any additional arguments that were passed
  /// into the generator, with the exception of the first element representing the chord datum itself. The function returns the end angle in radians.
  /*external RibbonGenerator endAngle((this: This, d: RibbonSubgroupDatum, ...args: any[]) => number angle);*/
  external dynamic /*(this: This, d: RibbonSubgroupDatum, ...args: any[]) => number|RibbonGenerator*/ endAngle(
      [dynamic /*num|(this: This, d: RibbonSubgroupDatum, ...args: any[]) => number*/ angle]);

  /// Returns the current rendering context, which defaults to null.
  /*external CanvasRenderingContext2D|Null context();*/
  /// Sets the rendering context and returns this ribbon generator.
  /// If the context is not null, then the generated ribbon is rendered to this context as a sequence of path method calls.
  /*external RibbonGenerator context(CanvasRenderingContext2D context);*/
  /// Sets the rendering context to null and returns this ribbon generator.
  /// A path data string representing the generated ribbon will be returned when the generator is invoked with data. See also d3-path.
  /*external RibbonGenerator context(Null context);*/
  external dynamic /*CanvasRenderingContext2D|RibbonGenerator*/ context(
      [CanvasRenderingContext2D context]);
}

/// Creates a new ribbon generator with the default settings.
/*external RibbonGenerator<dynamic, Ribbon, RibbonSubgroup> ribbon();*/
/// Creates a new ribbon generator with the default settings.
/// Accessor functions must be configured for the ribbon generator, should the datum types differ from the defaults.
/// The first generic corresponds to the datum type representing a chord for which the ribbon is to be generated. The default type is Chord.
/// The second generic corresponds to the datum type of the chord subgroup, i.e. source or target of the cord. The default type is ChordSubgroup.
/*external RibbonGenerator<dynamic,Datum,SubgroupDatum> ribbon<Datum, SubgroupDatum>();*/
/// Creates a new ribbon generator with the default settings.
/// Accessor functions must be configured for the ribbon generator, should the datum types differ from the defaults.
/// The first generic corresponds to the type of the "this" context within which the ribbon generator and its accessor functions will be invoked.
/// The second generic corresponds to the datum type representing a chord for which the ribbon is to be generated. The default type is Chord.
/// The third generic corresponds to the datum type of the chord subgroup, i.e. source or target of the cord. The default type is ChordSubgroup.
/*external RibbonGenerator<This,Datum,SubgroupDatum> ribbon<This, Datum, SubgroupDatum>();*/
@JS()
external RibbonGenerator /*RibbonGenerator<dynamic,Ribbon,RibbonSubgroup>|RibbonGenerator<dynamic,Datum,SubgroupDatum>|RibbonGenerator<This,Datum,SubgroupDatum>*/ ribbon/*<Datum, SubgroupDatum, This>*/();


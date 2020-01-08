import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'builtmovie.dart';

part 'builtmovies.g.dart';

abstract class BuiltMovies implements Built<BuiltMovies, BuiltMoviesBuilder> {

  int get page;

  @BuiltValueField(wireName: "total_results")
  int get totalResults;

  @BuiltValueField(wireName: "total_pages")
  int get totalPages;

  @BuiltValueField(wireName: "results")
  BuiltList<BuiltMovie> get movies;

  BuiltMovies._();

  factory BuiltMovies([updates(BuiltMoviesBuilder b)]) = _$BuiltMovies;

  static Serializer<BuiltMovies> get serializer => _$builtMoviesSerializer;






}
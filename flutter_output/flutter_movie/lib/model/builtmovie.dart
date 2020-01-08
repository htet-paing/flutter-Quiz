import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'builtmovie.g.dart';

abstract class BuiltMovie implements Built<BuiltMovie, BuiltMovieBuilder> {

  int get id  ;
  String get title;

  @nullable
  @BuiltValueField(wireName: "poster_path")
  String get posterPath;

  @nullable
  @BuiltValueField(wireName: "backdrop_path")
  String get backdropPath;

  String get overview;

  BuiltMovie._();

  factory BuiltMovie([updates(BuiltMovieBuilder b)]) = _$BuiltMovie;

  static Serializer<BuiltMovie> get serializer => _$builtMovieSerializer;
}
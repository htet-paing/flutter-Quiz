import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';

import 'builtmovie.dart';
import 'builtmovies.dart';

part 'serializers.g.dart';

@SerializersFor(const [BuiltMovie, BuiltMovies])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
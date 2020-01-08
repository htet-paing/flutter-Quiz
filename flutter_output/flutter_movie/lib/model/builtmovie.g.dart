// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'builtmovie.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltMovie> _$builtMovieSerializer = new _$BuiltMovieSerializer();

class _$BuiltMovieSerializer implements StructuredSerializer<BuiltMovie> {
  @override
  final Iterable<Type> types = const [BuiltMovie, _$BuiltMovie];
  @override
  final String wireName = 'BuiltMovie';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltMovie object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'overview',
      serializers.serialize(object.overview,
          specifiedType: const FullType(String)),
    ];
    if (object.posterPath != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(object.posterPath,
            specifiedType: const FullType(String)));
    }
    if (object.backdropPath != null) {
      result
        ..add('backdrop_path')
        ..add(serializers.serialize(object.backdropPath,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuiltMovie deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltMovieBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'poster_path':
          result.posterPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'backdrop_path':
          result.backdropPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltMovie extends BuiltMovie {
  @override
  final int id;
  @override
  final String title;
  @override
  final String posterPath;
  @override
  final String backdropPath;
  @override
  final String overview;

  factory _$BuiltMovie([void Function(BuiltMovieBuilder) updates]) =>
      (new BuiltMovieBuilder()..update(updates)).build();

  _$BuiltMovie._(
      {this.id, this.title, this.posterPath, this.backdropPath, this.overview})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltMovie', 'id');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('BuiltMovie', 'title');
    }
    if (overview == null) {
      throw new BuiltValueNullFieldError('BuiltMovie', 'overview');
    }
  }

  @override
  BuiltMovie rebuild(void Function(BuiltMovieBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltMovieBuilder toBuilder() => new BuiltMovieBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltMovie &&
        id == other.id &&
        title == other.title &&
        posterPath == other.posterPath &&
        backdropPath == other.backdropPath &&
        overview == other.overview;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), title.hashCode), posterPath.hashCode),
            backdropPath.hashCode),
        overview.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltMovie')
          ..add('id', id)
          ..add('title', title)
          ..add('posterPath', posterPath)
          ..add('backdropPath', backdropPath)
          ..add('overview', overview))
        .toString();
  }
}

class BuiltMovieBuilder implements Builder<BuiltMovie, BuiltMovieBuilder> {
  _$BuiltMovie _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _posterPath;
  String get posterPath => _$this._posterPath;
  set posterPath(String posterPath) => _$this._posterPath = posterPath;

  String _backdropPath;
  String get backdropPath => _$this._backdropPath;
  set backdropPath(String backdropPath) => _$this._backdropPath = backdropPath;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  BuiltMovieBuilder();

  BuiltMovieBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _posterPath = _$v.posterPath;
      _backdropPath = _$v.backdropPath;
      _overview = _$v.overview;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltMovie other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltMovie;
  }

  @override
  void update(void Function(BuiltMovieBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltMovie build() {
    final _$result = _$v ??
        new _$BuiltMovie._(
            id: id,
            title: title,
            posterPath: posterPath,
            backdropPath: backdropPath,
            overview: overview);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'builtmovies.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltMovies> _$builtMoviesSerializer = new _$BuiltMoviesSerializer();

class _$BuiltMoviesSerializer implements StructuredSerializer<BuiltMovies> {
  @override
  final Iterable<Type> types = const [BuiltMovies, _$BuiltMovies];
  @override
  final String wireName = 'BuiltMovies';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltMovies object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'total_results',
      serializers.serialize(object.totalResults,
          specifiedType: const FullType(int)),
      'total_pages',
      serializers.serialize(object.totalPages,
          specifiedType: const FullType(int)),
      'results',
      serializers.serialize(object.movies,
          specifiedType:
              const FullType(BuiltList, const [const FullType(BuiltMovie)])),
    ];

    return result;
  }

  @override
  BuiltMovies deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltMoviesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_results':
          result.totalResults = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_pages':
          result.totalPages = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'results':
          result.movies.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltMovie)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltMovies extends BuiltMovies {
  @override
  final int page;
  @override
  final int totalResults;
  @override
  final int totalPages;
  @override
  final BuiltList<BuiltMovie> movies;

  factory _$BuiltMovies([void Function(BuiltMoviesBuilder) updates]) =>
      (new BuiltMoviesBuilder()..update(updates)).build();

  _$BuiltMovies._({this.page, this.totalResults, this.totalPages, this.movies})
      : super._() {
    if (page == null) {
      throw new BuiltValueNullFieldError('BuiltMovies', 'page');
    }
    if (totalResults == null) {
      throw new BuiltValueNullFieldError('BuiltMovies', 'totalResults');
    }
    if (totalPages == null) {
      throw new BuiltValueNullFieldError('BuiltMovies', 'totalPages');
    }
    if (movies == null) {
      throw new BuiltValueNullFieldError('BuiltMovies', 'movies');
    }
  }

  @override
  BuiltMovies rebuild(void Function(BuiltMoviesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltMoviesBuilder toBuilder() => new BuiltMoviesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltMovies &&
        page == other.page &&
        totalResults == other.totalResults &&
        totalPages == other.totalPages &&
        movies == other.movies;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, page.hashCode), totalResults.hashCode),
            totalPages.hashCode),
        movies.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltMovies')
          ..add('page', page)
          ..add('totalResults', totalResults)
          ..add('totalPages', totalPages)
          ..add('movies', movies))
        .toString();
  }
}

class BuiltMoviesBuilder implements Builder<BuiltMovies, BuiltMoviesBuilder> {
  _$BuiltMovies _$v;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  int _totalResults;
  int get totalResults => _$this._totalResults;
  set totalResults(int totalResults) => _$this._totalResults = totalResults;

  int _totalPages;
  int get totalPages => _$this._totalPages;
  set totalPages(int totalPages) => _$this._totalPages = totalPages;

  ListBuilder<BuiltMovie> _movies;
  ListBuilder<BuiltMovie> get movies =>
      _$this._movies ??= new ListBuilder<BuiltMovie>();
  set movies(ListBuilder<BuiltMovie> movies) => _$this._movies = movies;

  BuiltMoviesBuilder();

  BuiltMoviesBuilder get _$this {
    if (_$v != null) {
      _page = _$v.page;
      _totalResults = _$v.totalResults;
      _totalPages = _$v.totalPages;
      _movies = _$v.movies?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltMovies other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltMovies;
  }

  @override
  void update(void Function(BuiltMoviesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltMovies build() {
    _$BuiltMovies _$result;
    try {
      _$result = _$v ??
          new _$BuiltMovies._(
              page: page,
              totalResults: totalResults,
              totalPages: totalPages,
              movies: movies.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'movies';
        movies.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltMovies', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

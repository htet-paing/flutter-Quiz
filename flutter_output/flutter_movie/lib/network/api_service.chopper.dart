// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ApiService extends ApiService {
  _$ApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiService;

  @override
  Future<Response<BuiltMovies>> getMovies(Map<String, dynamic> query) {
    final $url = '/movie/popular';
    final $params = query;
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltMovies, BuiltMovies>($request);
  }

  @override
  Future<Response<BuiltMovies>> getMoviesDetail(int movieId) {
    final $url = '/movie/{movie_id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltMovies, BuiltMovies>($request);
  }
}

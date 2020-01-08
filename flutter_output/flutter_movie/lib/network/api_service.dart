import 'dart:io';
import 'package:http/io_client.dart' as http;
import 'package:chopper/chopper.dart';
import 'package:flutter_movie/model/builtmovies.dart';
import 'interceptor/api_request_interceptor.dart';
import 'interceptor/built_value_converter.dart';
import 'interceptor/internet_connection_interceptor.dart';
part 'api_service.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class ApiService extends ChopperService {

//  static Future<T> fetch<T>(Future<T> Function() dataGetter) async {
//    try{
//      final responseBody = await dataGetter();
//      return responseBody;
//    }on SocketException{
//      throw NoConnectionException();
//    }on Http404Exception{
//      throw Http404Exception();
//    }on FormatException{
//      throw BadResponseException();
//    }
//
//  }

    //TODO("API Call")
  @Get(path: "movie/popular")
  Future<Response<BuiltMovies>> getMovies(
      @QueryMap() Map<String, dynamic> query
      );
  @Get(path: "movie/{movie_id}")
  Future<Response<BuiltMovies>> getMoviesDetail(@Path() int movieId);

  //TODO(CHOPPER)
  static ApiService create() {
    final client = ChopperClient(
        baseUrl: 'https://api.themoviedb.org/3',
        services: [
          _$ApiService(),
        ],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          ApiRequestInterceptor(),
          InternetConnectionInterceptor()
        ],

        client: http.IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 5),
    ),
    );
    return _$ApiService(client);

  }
}
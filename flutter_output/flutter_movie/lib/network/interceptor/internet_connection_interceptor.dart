import 'dart:async';
import 'package:chopper/chopper.dart';
import 'package:connectivity/connectivity.dart';

class InternetConnectionInterceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) async {
    final connectivityResult = await Connectivity().checkConnectivity();

    final isMobile = connectivityResult == ConnectivityResult.mobile;
    final isWifi = connectivityResult == ConnectivityResult.wifi;
    print(isMobile);
    print(isWifi);
    if(!isMobile && !isWifi) {
      throw NoConnectionException();
    }
    return request;
  }



}

class NoConnectionException implements Exception {
  final message = "No internet Connection";
  @override
  String toString() => message;
}

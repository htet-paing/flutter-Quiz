import 'dart:async';

import 'package:chopper/chopper.dart';


class ApiRequestInterceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) {
    Map<String, dynamic> query = {
      "api_key": "1611e2ffe746c99b86236930d02c2f2e"
    };
    var newRequest = request.replace(parameters: query);
    return newRequest;
  }

}
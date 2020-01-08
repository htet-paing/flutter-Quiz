import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';

typedef List<dynamic> ListGetter<T>(T body);
typedef Widget ItemBuilder<T>(BuildContext context, T item);
typedef Future<Response<T>> OnGet<T>(int page);

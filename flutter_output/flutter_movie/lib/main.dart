import 'package:flutter/material.dart';
import 'package:flutter_movie/model/modi/connectivity_state.dart';
import 'package:flutter_movie/network/api_service.dart';
import 'package:provider/provider.dart';
import 'ui/homepage.dart';

void main() => runApp(MyApp());
// ignore: must_be_immutable
class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => ApiService.create(),
          dispose: (_, ApiService service) => service.dispose(),
        ),
        ChangeNotifierProvider(
          create: (_) => ConnectivityChangeNotifier(),
        )

      ],
      child: MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}

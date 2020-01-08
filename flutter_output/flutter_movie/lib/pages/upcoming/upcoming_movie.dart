import 'package:flutter/material.dart';

class UpcomingMovie extends StatefulWidget {
  @override
  _UpcomingMovieState createState() => _UpcomingMovieState();
}

class _UpcomingMovieState extends State<UpcomingMovie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Upcoming'),
      ),
    );
  }
}

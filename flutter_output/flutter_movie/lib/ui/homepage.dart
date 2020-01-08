import 'package:flutter/material.dart';
import 'package:flutter_movie/pages/popular/popular_movie.dart';
import 'package:flutter_movie/pages/upcoming/upcoming_movie.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static  List<Widget> _widgetOption = <Widget>[
    PopularMovie(),
    UpcomingMovie()
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popular Movies", style: TextStyle(
            color: Colors.black
        ),),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
            color: Colors.black,
          )
        ],
      ),

      body: Center(
        child: _widgetOption[_selectedIndex],
      ),

      bottomNavigationBar: BottomNavigationBar(
        elevation: 10.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter),
            title: Text('Popular')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              title: Text('Upcoming')
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

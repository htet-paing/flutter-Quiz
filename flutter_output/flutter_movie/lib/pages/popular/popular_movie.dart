import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie/model/builtmovies.dart';
import 'package:flutter_movie/network/api_service.dart';
import 'package:flutter_movie/pages/popular/popular_list.dart';
import 'package:provider/provider.dart';

class PopularMovie extends StatefulWidget {
  @override
  _PopularMovieState createState() => _PopularMovieState();
}

class _PopularMovieState extends State<PopularMovie> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:FutureBuilder<Response<BuiltMovies>>(
           future: Provider.of<ApiService>(context).getMovies({}),
           builder: (context, snapshot){
            if(snapshot.connectionState == ConnectionState.done){
              if(snapshot.hasError){
                return Center(
                  child: Text(
                    snapshot.error.toString(),
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.3,
                  ),
                );

              }

              final movies = snapshot.data.body;

              return PopularList(movies: movies,);
            }else{
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),

    );


  }
}



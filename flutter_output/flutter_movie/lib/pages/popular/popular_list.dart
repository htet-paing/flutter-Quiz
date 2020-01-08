import 'package:flutter/material.dart';
import 'package:flutter_movie/model/builtmovies.dart';

// ignore: must_be_immutable
class PopularList extends StatefulWidget {
  BuiltMovies movies;

  PopularList({this.movies});


  @override
  _PopularListState createState() => _PopularListState();
}

class _PopularListState extends State<PopularList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5.0, right: 5.0,top: 5.0),
      child: GridView.builder(
        itemCount: widget.movies.movies.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0))
            ),
            child: Image.network("https://image.tmdb.org/t/p/w300/" +
                widget.movies.movies[index].posterPath,
              fit: BoxFit.fill,
            ),
            clipBehavior: Clip.antiAlias,
          );
        },
      ),
    );
  }

}

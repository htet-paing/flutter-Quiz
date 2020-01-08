import 'package:flutter/material.dart';
import 'package:flutter_movie/model/modi/base_model.dart';
import 'package:flutter_movie/model/modi/network_failure_exception.dart';
import 'package:provider/provider.dart';

class ErrorMessageWidget<T extends BaseModel> extends StatelessWidget {
  final Exception error;

  const ErrorMessageWidget({Key key, @required this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (error is NoConnectionException) {
      return NoConnectionWidget<T>();
    } else if (error is Http404Exception) {
      return Error404Widget();
    } else {
      return ErrorWidget();
    }
  }
}

class NoConnectionWidget<T extends BaseModel> extends StatefulWidget {
  const NoConnectionWidget({Key key}) : super(key: key);

  @override
  _NoConnectionWidgetState createState() => _NoConnectionWidgetState<T>();
}

class _NoConnectionWidgetState<T extends BaseModel>
    extends State<NoConnectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<T>(
      builder: (context, baseModel, _) {
        return Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 40,
                ),
                Text(
                  'No Connection',
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).textTheme.title.color,
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    baseModel.setError(null);
                    baseModel.fetchData();
                  },
                  child: Text('Retry'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Error404Widget extends StatelessWidget {
  const Error404Widget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.help,
              color: Colors.blue,
              size: 40,
            ),
            Text('Content not found!',
                style: TextStyle(fontSize: 20, color: Colors.black)),
          ],
        ),
      ),
    );
  }
}

class ErrorWidget extends StatelessWidget {
  const ErrorWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.error,
              color: Colors.grey,
              size: 40,
            ),
            Text('Error', style: TextStyle(fontSize: 20, color: Colors.black)),
          ],
        ),
      ),
    );
  }
}

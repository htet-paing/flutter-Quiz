import 'package:flutter/cupertino.dart';
import 'package:flutter_movie/model/modi/network_failure_exception.dart';
import 'package:flutter_movie/network/api_service.dart';

enum DataState { initial, loading, loaded }

abstract class BaseModel extends ChangeNotifier {
  ApiService apiService = ApiService.create();

  Exception error;
  void setError(Exception error) {
    this.error = error;
    notifyListeners();
  }
bool hasError(){
    return error != null;
}

  DataState dataState = DataState.initial;
  void setDataState(DataState dataState) {
    this.dataState = dataState;
    notifyListeners();
  }
bool loaded(){
    return dataState == DataState.loaded;
}

  Future fetchData() async {
   setDataState(DataState.loading);
   try{
     await onGet();
   }on NetworkFailure catch (e){
     setError(e);
   }finally {
     setDataState(DataState.loaded);
   }
  }

  @override
  void dispose() {
    this.apiService.dispose();
    super.dispose();
  }
  Future onGet();
}

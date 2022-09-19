// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';

abstract class DataState<T> {
  final T? data;
  final DioError? error;

  // ignore: sort_constructors_first
  const DataState({this.data, this.error});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(DioError error) : super(error: error);
}

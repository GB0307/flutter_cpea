import 'package:cpea/src/core/interfaces/failure.dart';
import 'package:dartz/dartz.dart';

class Response<T> {
  const Response(this._data);
  Response.from(dynamic data)
      : _data = data is T
            ? Right(data)
            : data is IFailure
                ? Left(data)
                : throw Exception("Type of response not compatible");

  final Either<IFailure, T> _data;

  bool get didSuccess => _data.isRight();
  bool get didFail => !didSuccess;

  T get data => (_data as Right<IFailure, T>).value;
  IFailure get failure => (_data as Left<IFailure, T>).value;
}

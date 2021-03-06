import 'package:dartz/dartz.dart';
import 'failure.dart';

class DResponse<T> {
  const DResponse(this._data);
  DResponse.from(dynamic data)
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

  DResponse<V> map<V>(V Function(T v) mapper) {
    return didSuccess
        ? DResponse<V>.from(mapper(data))
        : DResponse<V>.from(failure);
  }

  R on<R>({Function(T data)? success, Function(IFailure failure)? failure}) {
    if (didFail) {
      return failure?.call(this.failure);
    } else {
      return success?.call(data);
    }
  }
}

typedef AsyncResponse<T> = Future<DResponse<T>>;

import 'package:gbx_core/core/errors/failures.dart';
import 'package:gbx_core/core/interfaces/index.dart';
import 'package:logger/logger.dart';

abstract class IRepository {
  const IRepository();

  static final Logger logger = Logger();

  DResponse<T> runCatching<T>(T Function() job) {
    try {
      return DResponse<T>.from(job());
    } on Exception catch (e) {
      var f = catchExceptions(e);
      if (f == null) logger.e("EXCEPTION NOT CATCHED!", e);
      return DResponse<T>.from(f ?? GeneralFailure(e));
    }
  }

  Future<DResponse<T>> runCatchingAsync<T>(Future<T> Function() job) async {
    try {
      return DResponse<T>.from(await job());
    } on Exception catch (e) {
      var f = catchExceptions(e);
      if (f == null) logger.e("EXCEPTION NOT CATCHED!", e);
      return DResponse<T>.from(f ?? GeneralFailure(e));
    }
  }

  IFailure? catchExceptions(Exception e);

  IFailure? on<T extends Exception>(
      Exception exception, IFailure Function(T e) getter) {
    if (exception is T) return getter(exception);
  }
}

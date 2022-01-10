import 'package:gbx_core/core/interfaces/failure.dart';

class GeneralFailure extends IFailure {
  const GeneralFailure(this.exception) : super();
  final Exception exception;

  @override
  List<dynamic> get props => [exception];

  @override
  String toString() => exception.toString();
}

class InvalidDataFailure extends GeneralFailure {
  const InvalidDataFailure(Exception exception) : super(exception);
}

class NoDataFailure extends IFailure {}

class UnauthorizedFailure extends IFailure {}

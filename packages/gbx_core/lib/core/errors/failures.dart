import 'package:gbx_core/core/interfaces/failure.dart';

class GeneralFailure extends IFailure {
  const GeneralFailure(this.exception) : super();
  final Exception exception;

  @override
  List<dynamic> get props => [exception];
}

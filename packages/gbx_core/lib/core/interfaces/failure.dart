import 'package:equatable/equatable.dart';

abstract class IFailure extends Equatable {
  const IFailure([this.properties = const <dynamic>[]]);
  final List properties;

  @override
  List<dynamic> get props => properties;
}

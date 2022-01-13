import 'package:equatable/equatable.dart';

abstract class Identifiable extends Equatable {
  const Identifiable(this.id) : super();
  final String id;

  @override
  List<Object?> get props => [id];
}

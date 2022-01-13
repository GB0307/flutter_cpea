import 'package:equatable/equatable.dart';

class IdParam extends Equatable {
  const IdParam(this.id) : super();
  final String id;

  @override
  List<Object?> get props => [id];
}

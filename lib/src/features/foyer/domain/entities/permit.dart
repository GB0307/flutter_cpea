import 'package:freezed_annotation/freezed_annotation.dart';

part 'permit.freezed.dart';
part 'permit.g.dart';

@freezed
class Permit with _$Permit {
  factory Permit({
    required String authorizer,
    required String authorized,
    required DateTime startDate,
    required DateTime endDate,
  }) = _Permit;

  factory Permit.fromJson(Map<String, dynamic> json) => _$PermitFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gbx_core/core/index.dart';

part 'permit.freezed.dart';
part 'permit.g.dart';

@freezed
class Permit with _$Permit, Identifiable {
  @Implements<Identifiable>()
  factory Permit({
    String? id,
    required String authorizer,
    required String authorized,
    required String address,
    required DateTime startDate,
    required DateTime endDate,
    DateTime? creationDate,
    DateTime? lastUpdated,
  }) = _Permit;

  factory Permit.fromJson(Map<String, dynamic> json) => _$PermitFromJson(json);
}

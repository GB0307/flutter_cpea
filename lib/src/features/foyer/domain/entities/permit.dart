import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gbx_core/core/index.dart';
import 'package:gbx_firebase/gbx_firebase.dart';

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
    @TimestampConverter() required DateTime startDate,
    @TimestampConverter() required DateTime endDate,
    @TimestampConverter() DateTime? creationDate,
    @TimestampConverter() DateTime? lastUpdated,
  }) = _Permit;

  factory Permit.fromJson(Map<String, dynamic> json) => _$PermitFromJson(json);
}

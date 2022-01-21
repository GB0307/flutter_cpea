import 'package:cpea/src/features/appointments/domain/entities/appointment_location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gbx_core/core/interfaces/index.dart';

part 'appointment.freezed.dart';
part 'appointment.g.dart';

@freezed
class Appointment with _$Appointment, Identifiable {
  Appointment._();

  @Implements<Identifiable>()
  factory Appointment({
    String? id,
    required String appointmentName,
    required AppointmentLocation location,
    required DateTime startDate,
    required DateTime finishDate,
    required DateTime creationDate,
    double? totalCost,
    required String scheduler,
    required String address,
  }) = _Appointment;

  factory Appointment.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFromJson(json);
}

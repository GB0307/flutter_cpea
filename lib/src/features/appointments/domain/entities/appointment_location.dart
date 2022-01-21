import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gbx_core/core/interfaces/identifiable.dart';

part 'appointment_location.freezed.dart';
part 'appointment_location.g.dart';

@freezed
class AppointmentLocation with _$AppointmentLocation, Identifiable {
  @Implements<Identifiable>()
  factory AppointmentLocation({
    String? id,
    required String name,
    String? description,
    @Default(1) int maxConcurrentAppointments,
    @Default([]) List<String> images,
    double? cost,
    required Duration duration,
    DateTime? minAppointmentTime,
    DateTime? maxAppointmentTime,

    /// List of allowed weekdays
    /// If the number is in the list, this day is allowed for appointments.
    /// the week starts at 1, which is monday following the ISO 8601
    @Default([1, 2, 3, 4, 5, 6]) List<int>? allowedDays,

    /// Number of days you can create an appointment in advance.
    @Default(10) int advancementDays,
  }) = _AppointmentLocation;

  factory AppointmentLocation.fromJson(Map<String, dynamic> json) =>
      _$AppointmentLocationFromJson(json);
}

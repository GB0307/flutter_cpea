import 'package:cpea/src/features/locations/domain/entities/time_slot.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gbx_core/core/interfaces/identifiable.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class Location with _$Location, Identifiable {
  @Implements<Identifiable>()
  factory Location({
    String? id,
    required String name,
    String? description,
    @Default(1) int maxConcurrentAppointments,
    @Default([]) List<String> images,
    @Default(0) double cost,

    /// List of allowed weekdays
    /// If the number is in the list, this day is allowed for appointments.
    /// the week starts at 1, which is monday following the ISO 8601
    @Default([1, 2, 3, 4, 5, 6]) List<int> allowedDays,

    /// Number of days you can create an appointment in advance.
    @Default(10) int advancementDays,
    @Default([]) List<TimeSlot> timeSlots,
    DateTime? openingTime,
    DateTime? closingTime,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

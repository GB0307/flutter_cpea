import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/utils/l18n.dart';
import 'package:cpea/src/core/widgets/clickable_card.dart';
import 'package:cpea/src/core/widgets/horizontal_limited_list.dart';
import 'package:cpea/src/features/appointments/domain/entities/appointment.dart';
import 'package:cpea/src/features/appointments/presentation/widgets/appointment_card.dart';
import 'package:cpea/src/features/locations/domain/entities/location.dart';
import 'package:cpea/src/features/locations/domain/entities/time_slot.dart';
import 'package:flutter/material.dart';

final _locations = [
  Location(
    id: "tenis",
    name: "Quadras de tênis",
    maxConcurrentAppointments: 3,
    openingTime: DateTime(2022, 1, 1, 7),
    closingTime: DateTime(2022, 1, 1, 21),
    timeSlots: List<int>.generate(21 - 7, (index) => 7 + index)
        .map((e) => TimeSlot(
            startTime: DateTime(2022, 1, 1, e),
            duration: const Duration(hours: 1)))
        .toList(),
  ),
  Location(
      id: "eventos",
      name: "Area de eventos",
      maxConcurrentAppointments: 1,
      openingTime: DateTime(2022, 1, 1, 7),
      closingTime: DateTime(2022, 1, 1, 23),
      timeSlots: List<int>.generate(2, (index) => 7 + (index * 8 + index))
          .map((e) => TimeSlot(
              startTime: DateTime(2022, 1, 1, e),
              duration: const Duration(hours: 8)))
          .toList(),
      cost: 180,
      allowedDays: List.generate(7, (index) => index + 1),
      advancementDays: 45),
  Location(
    id: "bosque",
    name: "Bosque",
    maxConcurrentAppointments: 1,
    openingTime: DateTime(2022, 1, 1, 7),
    closingTime: DateTime(2022, 1, 1, 23),
    timeSlots: List<int>.generate(2, (index) => 7 + (index * 8 + index))
        .map((e) => TimeSlot(
            startTime: DateTime(2022, 1, 1, e),
            duration: const Duration(hours: 8)))
        .toList(),
    cost: 180,
    allowedDays: List.generate(7, (index) => index + 1),
    advancementDays: 45,
  ),
];
final _appointments = [
  Appointment(
    appointmentName: "Bosque",
    locationId: "bosque",
    startDate: DateTime(2022, 2, 15, 15),
    finishDate: DateTime(2022, 2, 15, 23),
    creationDate: DateTime(2022, 1, 21, 19),
    scheduler: "Gabriel Borges",
    schedulerId: "id",
    address: "G32",
  ),
  Appointment(
    appointmentName: "Quadras de tênis",
    locationId: "tenis",
    startDate: DateTime(2022, 2, 17, 17),
    finishDate: DateTime(2022, 2, 17, 18),
    creationDate: DateTime(2022, 1, 21, 19),
    scheduler: "Gabriel Borges",
    schedulerId: "id",
    address: "G32",
  ),
  Appointment(
    appointmentName: "Bosque",
    locationId: "bosque",
    startDate: DateTime(2022, 2, 16, 15),
    finishDate: DateTime(2022, 2, 16, 23),
    creationDate: DateTime(2022, 1, 21, 19),
    scheduler: "Gabriel Borges",
    schedulerId: "id",
    address: "G32",
  ),
  Appointment(
    appointmentName: "Quadras de tênis",
    locationId: "tenis",
    startDate: DateTime(2022, 2, 11, 17),
    finishDate: DateTime(2022, 2, 11, 18),
    creationDate: DateTime(2022, 1, 21, 19),
    scheduler: "Gabriel Borges",
    schedulerId: "id",
    address: "G32",
  ),
];

class NextAppointments extends StatelessWidget {
  const NextAppointments({
    Key? key,
    this.maxItems = 5,
    this.onTap,
  }) : super(key: key);

  final int maxItems;
  final void Function(Appointment appointment)? onTap;

  @override
  Widget build(BuildContext context) {
    final appointments = _appointments;
    appointments.sort((a, b) => a.startDate.compareTo(b.startDate));
    final items = appointments.take(maxItems).toList();

    return HorizontalLimitedList.builder(
      padding: const EdgeInsets.symmetric(
        horizontal: horizontalPadding,
      ),
      accountCardMargins: true,
      itemCount: items.length,
      builder: (context, index) => AppointmentCard(
        onTap: onTap != null ? () => onTap?.call(items[index]) : null,
        appointment: items[index],
      ),
    );
  }
}

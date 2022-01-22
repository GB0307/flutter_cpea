import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/widgets/card_corner_box.dart';
import 'package:cpea/src/core/widgets/clickable_card.dart';
import 'package:cpea/src/core/widgets/date_indicator.dart';
import 'package:cpea/src/features/appointments/domain/entities/appointment.dart';
import 'package:flutter/material.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({Key? key, required this.appointment, this.onTap})
      : super(key: key);

  final Appointment appointment;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ClickableCard(
      onTap: onTap,
      width: 112,
      height: 96,
      child: Column(
        children: [
          CardCornerBox.vertical(
            top: true,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(padding),
              child: DateIndicator.alternative(
                includeDayName: false,
                includeTime: true,
                date: appointment.startDate,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(halfPadding),
              child: Center(
                child: Text(
                  appointment.appointmentName,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

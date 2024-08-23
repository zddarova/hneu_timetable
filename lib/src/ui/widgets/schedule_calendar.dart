import 'package:flutter/material.dart';
import 'package:hneu_timetable/src/data/models/entities.dart';
import 'package:hneu_timetable/src/ui/widgets/pair_info.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class ScheduleCalendar extends StatelessWidget {
  final ScheduleEntity schedule;

  const ScheduleCalendar({super.key, required this.schedule});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(schedule.title),
      ),
      body: SfCalendar(
        view: CalendarView.week,
        dataSource: MeetingDataSource(_getAppointments(schedule)),
        appointmentBuilder: (context, details) {
          final Appointment appointment = details.appointments.first;
          return Container(
            color: appointment.color,
            padding: const EdgeInsets.all(2),
            child: GestureDetector(
              onTap: () {
                final date = details.date.toUtc();
                final items = schedule.items[date] ?? [];
                final item = items.firstWhere(
                  (item) => item.date == date,
                );

                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: PairInfo(item: item),
                  ),
                );
              },
              child: Text(
                appointment.subject,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

List<Appointment> _getAppointments(ScheduleEntity schedule) {
  final List<Appointment> appointments = [];

  schedule.items.forEach((date, items) {
    for (var item in items) {
      final color = item.lessonType == 'Лекція'
          ? Colors.red
          : item.lessonType == 'Практика'
              ? Colors.green
              : Colors.blue;
      appointments.add(
        Appointment(
          id: item.subject,
          startTime:
              DateTime(date.year, date.month, date.day, item.startTime.hour, item.startTime.minute),
          endTime:
              DateTime(date.year, date.month, date.day, item.endTime.hour, item.endTime.minute),
          subject: item.subject,
          color: color,
        ),
      );
    }
  });

  return appointments;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> appointments) {
    this.appointments = appointments;
  }
}

import 'package:flutter/material.dart';
import 'package:hneu_timetable/src/data/models/entities.dart';
import 'package:hneu_timetable/src/ui/widgets/pair_info.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class ScheduleCalendar extends StatelessWidget {
  final ScheduleEntity schedule;
  final ValueChanged<int> onWeekChanged;

  const ScheduleCalendar({
    super.key,
    required this.schedule,
    required this.onWeekChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          schedule.title.replaceAll(RegExp(r'\s+'), ' '),
        ),
      ),
      body: SfCalendar(
        view: CalendarView.week,
        showWeekNumber: true,
        showNavigationArrow: true,
        dataSource: _MeetingDataSource(_getAppointments(schedule)),
        firstDayOfWeek: 1,
        timeSlotViewSettings: const TimeSlotViewSettings(
          startHour: 8,
          endHour: 20,
          timeFormat: 'h:mm',
          numberOfDaysInView: 7,
          timeInterval: Duration(minutes: 30),
        ),
        onViewChanged: (viewChangedDetails) async {
          final todaysDateTime = DateTime.now();
          final todaysDayOfTheWeek = todaysDateTime.weekday;

          final visibleDates = viewChangedDetails.visibleDates;

          final sameDayOfTheWeek =
              visibleDates.firstWhere((date) => date.weekday == todaysDayOfTheWeek);

          final deltaInDays = sameDayOfTheWeek.difference(todaysDateTime).inDays;
          final deltaInWeeks = deltaInDays ~/ 7;

          await Future.delayed(const Duration(milliseconds: 100));
          onWeekChanged(deltaInWeeks + 1);
        },
        appointmentBuilder: (context, details) {
          final Appointment appointment = details.appointments.first;
          return Container(
            color: appointment.color,
            padding: const EdgeInsets.all(2),
            child: GestureDetector(
              onTap: () {
                final selectedDate = details.date;
                final items = schedule.items[selectedDate] ?? [];
                final item = items.firstWhere(
                  (item) => item.toString() == appointment.id,
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
      final color = switch (item.lessonType) {
        'лекція' => Colors.blue,
        'практ.зан.' => Colors.green,
        'лаб.зан.' => Colors.red,
        'консультація' => Colors.orange,
        'екзамен' => Colors.purple,
        'залік' => Colors.purple,
        _ => Colors.black,
      };

      appointments.add(
        Appointment(
          id: item.toString(),
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

class _MeetingDataSource extends CalendarDataSource {
  _MeetingDataSource(List<Appointment> appointments) {
    this.appointments = appointments;
  }
}

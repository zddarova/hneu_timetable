import 'package:flutter/material.dart';
import 'package:hneu_timetable/src/ui/widgets/schedule_calendar.dart';
import 'package:hneu_timetable/src/data/models/entities.dart';
import 'package:hneu_timetable/src/data/network_service.dart';
import 'package:hneu_timetable/src/data/repository.dart';
import 'package:dio/dio.dart';

int week = 0;

class ScheduleCalendarPage extends StatefulWidget {
  const ScheduleCalendarPage({super.key});

  @override
  State<ScheduleCalendarPage> createState() => _ScheduleCalendarPageState();
}

class _ScheduleCalendarPageState extends State<ScheduleCalendarPage> {
  final repo = ScheduleRepository(service: ScheduleService(Dio()));
  ScheduleEntity? _schedule;

  final group = 37995;

  @override
  void initState() {
    super.initState();
    _fetchSchedule();
  }

  Future<void> _fetchSchedule() async {
    final schedule = await repo.getSchedule(
      group: group,
      week: week,
    );
    setState(() => _schedule = schedule);
  }

  @override
  Widget build(BuildContext context) {
    return _schedule == null
        ? const Center(child: CircularProgressIndicator())
        : ScheduleCalendar(
            schedule: _schedule!,
            onWeekChanged: (value) => setState(() {
              week = value;
              _fetchSchedule();
            }),
          );
  }
}

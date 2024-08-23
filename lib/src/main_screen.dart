import 'package:flutter/material.dart';
import 'package:hneu_timetable/src/calendar.dart';
import 'package:hneu_timetable/src/models/entities.dart';
import 'package:hneu_timetable/src/network_service.dart';
import 'package:hneu_timetable/src/repository.dart';
import 'package:dio/dio.dart';

class ScheduleCalendarPage extends StatefulWidget {
  const ScheduleCalendarPage({super.key});

  @override
  State<ScheduleCalendarPage> createState() => _ScheduleCalendarPageState();
}

class _ScheduleCalendarPageState extends State<ScheduleCalendarPage> {
  final repo = ScheduleRepository(service: ScheduleService(Dio()));
  ScheduleEntity? _schedule;

  @override
  void initState() {
    super.initState();
    _fetchSchedule();
  }

  Future<void> _fetchSchedule() async {
    final schedule = await repo.getSchedule();
    setState(() => _schedule = schedule);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Schedule Calendar')),
      body: _schedule == null
          ? const Center(child: CircularProgressIndicator())
          : ScheduleCalendar(schedule: _schedule!),
    );
  }
}

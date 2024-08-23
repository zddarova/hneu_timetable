import 'package:flutter/material.dart';
import 'package:hneu_timetable/src/models/schedule.dart';
import 'package:hneu_timetable/src/network_service.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:dio/dio.dart';

class ScheduleCalendarPage extends StatefulWidget {
  const ScheduleCalendarPage({super.key});

  @override
  State<ScheduleCalendarPage> createState() => _ScheduleCalendarPageState();
}

class _ScheduleCalendarPageState extends State<ScheduleCalendarPage> {
  final ScheduleService _scheduleService = ScheduleService(Dio());
  Map<DateTime, List<ScheduleItemDTO>> _events = {};
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchSchedule();
  }

  Future<void> _fetchSchedule() async {
    try {
      final schedule = await _scheduleService.getSchedule();
      setState(() {
        _events = _groupEventsByDate(schedule.items);
        _isLoading = false;
      });
    } catch (e) {
      debugPrint(e.toString());
      setState(() {
        _isLoading = false;
      });
    }
  }

  Map<DateTime, List<ScheduleItemDTO>> _groupEventsByDate(List<ScheduleItemEntity> items) {
    Map<DateTime, List<ScheduleItemDTO>> data = {};

    for (var item in items) {
      final DateTime eventDate = _parseDateFromTime(item.startTime);

      if (data[eventDate] != null) {
        data[eventDate]!.add(item);
      } else {
        data[eventDate] = [item];
      }
    }

    return data;
  }

  DateTime _parseDateFromTime(String time) {
    // Assuming time string is in "HH:mm" format and the date is for today.
    final today = DateTime.now();
    final timeParts = time.split(':');
    final hour = int.parse(timeParts[0]);
    final minute = int.parse(timeParts[1]);

    return DateTime(today.year, today.month, today.day, hour, minute);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Schedule Calendar')),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                TableCalendar(
                  firstDay: DateTime.utc(2020, 1, 1),
                  lastDay: DateTime.utc(2030, 12, 31),
                  focusedDay: _focusedDay,
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDay, day);
                  },
                  eventLoader: (day) {
                    return _events[day] ?? [];
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                    });
                  },
                  calendarStyle: const CalendarStyle(
                    markerDecoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                const SizedBox(height: 8.0),
                Expanded(
                  child: _buildEventList(),
                ),
              ],
            ),
    );
  }

  Widget _buildEventList() {
    final selectedEvents = _events[_selectedDay] ?? [];

    return ListView.builder(
      itemCount: selectedEvents.length,
      itemBuilder: (context, index) {
        final item = selectedEvents[index];
        return ListTile(
          title: Text(item.subject),
          subtitle: Text('${item.startTime} - ${item.room} - ${item.teacher}'),
        );
      },
    );
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:html/parser.dart' as html_parser;

import 'models/schedule.dart';

class ScheduleService {
  final Dio _dio;

  ScheduleService(this._dio);

  Future<ScheduleEntity> getSchedule() async {
    const url = 'http://rozklad.hneu.edu.ua/schedule/schedule?group=37995&week=4&student=446566';

    final response = await _dio.get(url);

    if (response.statusCode == 200) {
      final document = html_parser.parse(response.data);
      final scheduleItems = _parseHtml(document);

      return ScheduleEntity(items: parseToEntities(scheduleItems));
    } else {
      throw Exception('Failed to load schedule');
    }
  }

  List<ScheduleItemDTO> _parseHtml(dynamic document) {
    final List<ScheduleItemDTO> items = [];

    // Find all rows containing the schedule info
    final rows = document.querySelectorAll('tr');

    for (var row in rows) {
      final timeCell = row.querySelector('td.pair');
      final timeRange = timeCell?.querySelector('#pair-timing')?.text.trim() as String?;
      if (timeRange == null) continue;

      final startTime = timeRange.substring(0, 5);
      final endTime = timeRange.substring(21, 26);
// 08:30 - 09:1509:20 - 10:05
      // Get all subjects and their related info from the row
      final subjectCells = row.querySelectorAll('td#cell');

      for (var subjectCell in subjectCells) {
        final subject = subjectCell.querySelector('#subject')?.text.trim() ?? '';
        final lessonType = subjectCell.querySelector('#lessonType')?.text.trim() ?? '';
        final room = subjectCell.querySelector('#room')?.text.trim() ?? '';
        final teacher = subjectCell.querySelector('#teacher')?.text.trim() ?? '';

        if (subject.isNotEmpty) {
          final item = ScheduleItemDTO(
            subject: subject,
            startTime: startTime,
            endTime: endTime,
            room: room,
            lessonType: lessonType,
            teacher: teacher,
          );

          items.add(item);
        }
      }
    }

    return items;
  }

  List<ScheduleItemEntity> parseToEntities(List<ScheduleItemDTO> scheduleItems) {
    return scheduleItems.map((item) {
      final startTimeParts = item.startTime.split(':');
      final endTimeParts = item.endTime.split(':');

      final startTime = TimeOfDay(
        hour: int.parse(startTimeParts[0]),
        minute: int.parse(startTimeParts[1]),
      );

      final endTime = TimeOfDay(
        hour: int.parse(endTimeParts[0]),
        minute: int.parse(endTimeParts[1]),
      );

      return ScheduleItemEntity(
        subject: item.subject,
        startTime: startTime,
        endTime: endTime,
        date: DateTime.now(),
        room: item.room,
        teacher: item.teacher,
        lessonType: item.lessonType,
      );
    }).toList();
  }
}

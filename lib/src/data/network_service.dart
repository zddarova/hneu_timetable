import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hneu_timetable/src/data/mock.dart';
import 'package:hneu_timetable/src/data/models/dtos.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart' as html_parser;

import 'models/entities.dart';

class ScheduleService {
  // ignore: unused_field
  final Dio _dio;

  ScheduleService(this._dio);

  Future<ParsedScheduleDTO> getSchedule() async {
    // const url = 'http://rozklad.hneu.edu.ua/schedule/schedule?group=37995&week=4&student=446566';

    // final response = await _dio.get(url);

    // if (response.statusCode == 200) {
    final document = html_parser.parse(mockHtml);
    final scheduleItems = _parseHtml(document);
    return scheduleItems;
    // } else {
    //   throw Exception('Failed to load schedule');
    // }
  }

  ParsedScheduleDTO _parseHtml(Document document) {
    final List<ScheduleItemDTO> items = [];
    final List<DayDTO> days = [];
    final title = document.querySelector('title')?.text ?? '';

    // Find all rows containing the schedule info
    final rows = document.querySelectorAll('tr');

    for (var i = 0; i < rows.length; i++) {
      final row = rows[i];
      final dayName = row.querySelector('td#dayName')?.text.trim();
      final date = row.querySelector('td#date')?.text.trim();

      if (dayName != null && date != null) {
        days.add(DayDTO(day: dayName, date: date));
        continue;
      }

      final timeCell = row.querySelector('td.pair');
      final timeRange = timeCell?.querySelector('#pair-timing')?.text.trim();
      if (timeRange == null) continue;

      final pairText = timeCell?.text.trim();
      final pairNumber = int.tryParse(pairText?[0] ?? '');
      if (pairNumber == null) continue;

      final startTime = timeRange.substring(0, 5);
      final endTime = timeRange.substring(21, 26);
      // 08:30 - 09:1509:20 - 10:05
      // Get all subjects and their related info from the row
      final subjectCells = row.querySelectorAll('td#cell');

      for (var j = 0; j < subjectCells.length; j++) {
        final subjectCell = subjectCells[j];
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
            timeString: timeRange,
            pairNumber: pairNumber,
            rowNumber: i,
            columnNumber: j,
          );

          items.add(item);
        }
      }
    }

    return ParsedScheduleDTO(
      title: title,
      days: days,
      items: items,
    );
  }
}

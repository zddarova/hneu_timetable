import 'package:flutter/material.dart';
import 'package:hneu_timetable/src/models/dtos.dart';
import 'package:hneu_timetable/src/models/entities.dart';
import 'package:hneu_timetable/src/network_service.dart';

class ScheduleRepository {
  final ScheduleService service;

  ScheduleRepository({required this.service});

  Future<ScheduleEntity> getSchedule() async {
    final scheduleDto = await service.getSchedule();
    final entity = _parseToEntity(scheduleDto);
    return entity;
  }

  ScheduleEntity _parseToEntity(ParsedScheduleDTO schedule) {
    final title = schedule.title;
    final items = _parseToEntities(schedule.days, schedule.items);

    return ScheduleEntity(title: title, items: items);
  }

  Map<DateTime, List<ScheduleItemEntity>> _parseToEntities(
    List<DayDTO> days,
    List<ScheduleItemDTO> scheduleItems,
  ) {
    final dateTimes = _parseToDates(days);

    final items = scheduleItems.map((item) {
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

      final result = ScheduleItemEntity(
        subject: item.subject,
        startTime: startTime,
        endTime: endTime,
        date: dateTimes[item.columnNumber]!,
        room: item.room,
        teacher: item.teacher,
        lessonType: item.lessonType,
      );

      return result;
    }).toList();

    final groupedItems = <DateTime, List<ScheduleItemEntity>>{};
    for (final item in items) {
      if (groupedItems.containsKey(item.date)) {
        groupedItems[item.date]!.add(item);
      } else {
        groupedItems[item.date] = [item];
      }
    }

    return groupedItems;
  }

  Map<int, DateTime> _parseToDates(List<DayDTO> days) {
    // ignore: unused_local_variable
    const weekdaysToNumber = {
      'Понеділок': 1,
      'Вівторок': 2,
      'Середа': 3,
      'Четвер': 4,
      'П\'ятниця': 5,
      'Субота': 6,
      'Неділя': 7,
    };

    final dates = List<DateTime>.empty(growable: true);

    for (final dayDto in days) {
      if (dayDto.date.isEmpty || dayDto.day.isEmpty) continue;
      final date = _parseDateToDateTime(dayDto);
      dates.add(date);
    }

    return {
      for (var i = 0; i < dates.length; i++) i: dates[i],
    };
  }

  DateTime _parseDateToDateTime(DayDTO date) {
    const monthsToNumber = {
      'січня': 1,
      'лютого': 2,
      'березня': 3,
      'квітня': 4,
      'травня': 5,
      'червня': 6,
      'липня': 7,
      'серпня': 8,
      'вересня': 9,
      'жовтня': 10,
      'листопада': 11,
      'грудня': 12,
    };

    final dateNumber = int.parse(date.date.split(' ')[0]);
    final monthNumber = monthsToNumber[date.date.split(' ')[1]] as int;
    final year = int.parse(date.date.split(' ')[2]);

    return DateTime(
      year,
      monthNumber,
      dateNumber,
    ).toUtc();
  }
}

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'entities.freezed.dart';

@freezed
class ScheduleEntity with _$ScheduleEntity {
  const factory ScheduleEntity({
    required String title,
    required Map<DateTime, List<ScheduleItemEntity>> items,
  }) = _ScheduleEntity;
}


@freezed
class ScheduleItemEntity with _$ScheduleItemEntity {
  const factory ScheduleItemEntity({
    required String subject,
    required TimeOfDay startTime,
    required TimeOfDay endTime,
    required DateTime date,
    required String room,
    required String teacher,
    required String lessonType,
  }) = _ScheduleItemEntit;
}


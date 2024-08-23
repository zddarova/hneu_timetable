import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule.freezed.dart';

@freezed
class ScheduleEntity with _$ScheduleEntity {
  const factory ScheduleEntity({
    required List<ScheduleItemEntity> items,
  }) = _ScheduleEntity;
}

@freezed
class ScheduleItemDTO with _$ScheduleItemDTO {
  const factory ScheduleItemDTO({
    required String subject,
    required String startTime,
    required String endTime,
    required String room,
    required String teacher,
    required String lessonType,
  }) = _ScheduleItemDTO;
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

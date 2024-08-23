import 'package:freezed_annotation/freezed_annotation.dart';

part 'dtos.freezed.dart';

@freezed
class ParsedScheduleDTO with _$ParsedScheduleDTO {
  const factory ParsedScheduleDTO({
    required String title,
    required List<DayDTO> days,
    required List<ScheduleItemDTO> items,
  }) = _ParsedScheduleDTO;
}

@freezed
class ScheduleItemDTO with _$ScheduleItemDTO {
  const factory ScheduleItemDTO({
    required String subject,
    required String startTime,
    required String endTime,
    required String timeString,
    required String room,
    required String teacher,
    required String lessonType,
    required int pairNumber,
    required int rowNumber,
    required int columnNumber,
  }) = _ScheduleItemDTO;
}

@freezed
class DayDTO with _$DayDTO {
  const factory DayDTO({
    required String day,
    required String date,
  }) = _DayDTO;
}

import 'package:flutter/material.dart';
import 'package:hneu_timetable/src/data/models/entities.dart';

class PairInfo extends StatelessWidget {
  final ScheduleItemEntity item;

  const PairInfo({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _PairInfoItem(title: 'Предмет', value: item.subject),
        _PairInfoItem(title: 'Викладач', value: item.teacher),
        _PairInfoItem(title: 'Тип пари', value: item.lessonType),
        _PairInfoItem(title: 'Аудиторія', value: item.room),
        _PairInfoItem(
          title: 'Час',
          value: '${item.startTime.format(context)} - ${item.endTime.format(context)}',
        ),
      ],
    );
  }
}


class _PairInfoItem extends StatelessWidget {
  const _PairInfoItem({
    super.key,
    required this.title,
    required this.value,
  });

  final spacer = const SizedBox(height: 16);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(value),
          spacer,
        ],
      );
}

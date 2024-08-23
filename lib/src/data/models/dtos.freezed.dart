// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedScheduleDTO {
  String get title => throw _privateConstructorUsedError;
  List<DayDTO> get days => throw _privateConstructorUsedError;
  List<ScheduleItemDTO> get items => throw _privateConstructorUsedError;

  /// Create a copy of ParsedScheduleDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParsedScheduleDTOCopyWith<ParsedScheduleDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedScheduleDTOCopyWith<$Res> {
  factory $ParsedScheduleDTOCopyWith(
          ParsedScheduleDTO value, $Res Function(ParsedScheduleDTO) then) =
      _$ParsedScheduleDTOCopyWithImpl<$Res, ParsedScheduleDTO>;
  @useResult
  $Res call({String title, List<DayDTO> days, List<ScheduleItemDTO> items});
}

/// @nodoc
class _$ParsedScheduleDTOCopyWithImpl<$Res, $Val extends ParsedScheduleDTO>
    implements $ParsedScheduleDTOCopyWith<$Res> {
  _$ParsedScheduleDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParsedScheduleDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? days = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<DayDTO>,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ScheduleItemDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParsedScheduleDTOImplCopyWith<$Res>
    implements $ParsedScheduleDTOCopyWith<$Res> {
  factory _$$ParsedScheduleDTOImplCopyWith(_$ParsedScheduleDTOImpl value,
          $Res Function(_$ParsedScheduleDTOImpl) then) =
      __$$ParsedScheduleDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<DayDTO> days, List<ScheduleItemDTO> items});
}

/// @nodoc
class __$$ParsedScheduleDTOImplCopyWithImpl<$Res>
    extends _$ParsedScheduleDTOCopyWithImpl<$Res, _$ParsedScheduleDTOImpl>
    implements _$$ParsedScheduleDTOImplCopyWith<$Res> {
  __$$ParsedScheduleDTOImplCopyWithImpl(_$ParsedScheduleDTOImpl _value,
      $Res Function(_$ParsedScheduleDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParsedScheduleDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? days = null,
    Object? items = null,
  }) {
    return _then(_$ParsedScheduleDTOImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<DayDTO>,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ScheduleItemDTO>,
    ));
  }
}

/// @nodoc

class _$ParsedScheduleDTOImpl implements _ParsedScheduleDTO {
  const _$ParsedScheduleDTOImpl(
      {required this.title,
      required final List<DayDTO> days,
      required final List<ScheduleItemDTO> items})
      : _days = days,
        _items = items;

  @override
  final String title;
  final List<DayDTO> _days;
  @override
  List<DayDTO> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  final List<ScheduleItemDTO> _items;
  @override
  List<ScheduleItemDTO> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ParsedScheduleDTO(title: $title, days: $days, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedScheduleDTOImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      const DeepCollectionEquality().hash(_days),
      const DeepCollectionEquality().hash(_items));

  /// Create a copy of ParsedScheduleDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedScheduleDTOImplCopyWith<_$ParsedScheduleDTOImpl> get copyWith =>
      __$$ParsedScheduleDTOImplCopyWithImpl<_$ParsedScheduleDTOImpl>(
          this, _$identity);
}

abstract class _ParsedScheduleDTO implements ParsedScheduleDTO {
  const factory _ParsedScheduleDTO(
      {required final String title,
      required final List<DayDTO> days,
      required final List<ScheduleItemDTO> items}) = _$ParsedScheduleDTOImpl;

  @override
  String get title;
  @override
  List<DayDTO> get days;
  @override
  List<ScheduleItemDTO> get items;

  /// Create a copy of ParsedScheduleDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParsedScheduleDTOImplCopyWith<_$ParsedScheduleDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScheduleItemDTO {
  String get subject => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  String get timeString => throw _privateConstructorUsedError;
  String get room => throw _privateConstructorUsedError;
  String get teacher => throw _privateConstructorUsedError;
  String get lessonType => throw _privateConstructorUsedError;
  int get pairNumber => throw _privateConstructorUsedError;
  int get rowNumber => throw _privateConstructorUsedError;
  int get columnNumber => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleItemDTOCopyWith<ScheduleItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleItemDTOCopyWith<$Res> {
  factory $ScheduleItemDTOCopyWith(
          ScheduleItemDTO value, $Res Function(ScheduleItemDTO) then) =
      _$ScheduleItemDTOCopyWithImpl<$Res, ScheduleItemDTO>;
  @useResult
  $Res call(
      {String subject,
      String startTime,
      String endTime,
      String timeString,
      String room,
      String teacher,
      String lessonType,
      int pairNumber,
      int rowNumber,
      int columnNumber});
}

/// @nodoc
class _$ScheduleItemDTOCopyWithImpl<$Res, $Val extends ScheduleItemDTO>
    implements $ScheduleItemDTOCopyWith<$Res> {
  _$ScheduleItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? timeString = null,
    Object? room = null,
    Object? teacher = null,
    Object? lessonType = null,
    Object? pairNumber = null,
    Object? rowNumber = null,
    Object? columnNumber = null,
  }) {
    return _then(_value.copyWith(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      timeString: null == timeString
          ? _value.timeString
          : timeString // ignore: cast_nullable_to_non_nullable
              as String,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String,
      lessonType: null == lessonType
          ? _value.lessonType
          : lessonType // ignore: cast_nullable_to_non_nullable
              as String,
      pairNumber: null == pairNumber
          ? _value.pairNumber
          : pairNumber // ignore: cast_nullable_to_non_nullable
              as int,
      rowNumber: null == rowNumber
          ? _value.rowNumber
          : rowNumber // ignore: cast_nullable_to_non_nullable
              as int,
      columnNumber: null == columnNumber
          ? _value.columnNumber
          : columnNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleItemDTOImplCopyWith<$Res>
    implements $ScheduleItemDTOCopyWith<$Res> {
  factory _$$ScheduleItemDTOImplCopyWith(_$ScheduleItemDTOImpl value,
          $Res Function(_$ScheduleItemDTOImpl) then) =
      __$$ScheduleItemDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String subject,
      String startTime,
      String endTime,
      String timeString,
      String room,
      String teacher,
      String lessonType,
      int pairNumber,
      int rowNumber,
      int columnNumber});
}

/// @nodoc
class __$$ScheduleItemDTOImplCopyWithImpl<$Res>
    extends _$ScheduleItemDTOCopyWithImpl<$Res, _$ScheduleItemDTOImpl>
    implements _$$ScheduleItemDTOImplCopyWith<$Res> {
  __$$ScheduleItemDTOImplCopyWithImpl(
      _$ScheduleItemDTOImpl _value, $Res Function(_$ScheduleItemDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? timeString = null,
    Object? room = null,
    Object? teacher = null,
    Object? lessonType = null,
    Object? pairNumber = null,
    Object? rowNumber = null,
    Object? columnNumber = null,
  }) {
    return _then(_$ScheduleItemDTOImpl(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      timeString: null == timeString
          ? _value.timeString
          : timeString // ignore: cast_nullable_to_non_nullable
              as String,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String,
      lessonType: null == lessonType
          ? _value.lessonType
          : lessonType // ignore: cast_nullable_to_non_nullable
              as String,
      pairNumber: null == pairNumber
          ? _value.pairNumber
          : pairNumber // ignore: cast_nullable_to_non_nullable
              as int,
      rowNumber: null == rowNumber
          ? _value.rowNumber
          : rowNumber // ignore: cast_nullable_to_non_nullable
              as int,
      columnNumber: null == columnNumber
          ? _value.columnNumber
          : columnNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ScheduleItemDTOImpl implements _ScheduleItemDTO {
  const _$ScheduleItemDTOImpl(
      {required this.subject,
      required this.startTime,
      required this.endTime,
      required this.timeString,
      required this.room,
      required this.teacher,
      required this.lessonType,
      required this.pairNumber,
      required this.rowNumber,
      required this.columnNumber});

  @override
  final String subject;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final String timeString;
  @override
  final String room;
  @override
  final String teacher;
  @override
  final String lessonType;
  @override
  final int pairNumber;
  @override
  final int rowNumber;
  @override
  final int columnNumber;

  @override
  String toString() {
    return 'ScheduleItemDTO(subject: $subject, startTime: $startTime, endTime: $endTime, timeString: $timeString, room: $room, teacher: $teacher, lessonType: $lessonType, pairNumber: $pairNumber, rowNumber: $rowNumber, columnNumber: $columnNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleItemDTOImpl &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.timeString, timeString) ||
                other.timeString == timeString) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            (identical(other.lessonType, lessonType) ||
                other.lessonType == lessonType) &&
            (identical(other.pairNumber, pairNumber) ||
                other.pairNumber == pairNumber) &&
            (identical(other.rowNumber, rowNumber) ||
                other.rowNumber == rowNumber) &&
            (identical(other.columnNumber, columnNumber) ||
                other.columnNumber == columnNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      subject,
      startTime,
      endTime,
      timeString,
      room,
      teacher,
      lessonType,
      pairNumber,
      rowNumber,
      columnNumber);

  /// Create a copy of ScheduleItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleItemDTOImplCopyWith<_$ScheduleItemDTOImpl> get copyWith =>
      __$$ScheduleItemDTOImplCopyWithImpl<_$ScheduleItemDTOImpl>(
          this, _$identity);
}

abstract class _ScheduleItemDTO implements ScheduleItemDTO {
  const factory _ScheduleItemDTO(
      {required final String subject,
      required final String startTime,
      required final String endTime,
      required final String timeString,
      required final String room,
      required final String teacher,
      required final String lessonType,
      required final int pairNumber,
      required final int rowNumber,
      required final int columnNumber}) = _$ScheduleItemDTOImpl;

  @override
  String get subject;
  @override
  String get startTime;
  @override
  String get endTime;
  @override
  String get timeString;
  @override
  String get room;
  @override
  String get teacher;
  @override
  String get lessonType;
  @override
  int get pairNumber;
  @override
  int get rowNumber;
  @override
  int get columnNumber;

  /// Create a copy of ScheduleItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleItemDTOImplCopyWith<_$ScheduleItemDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DayDTO {
  String get day => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  /// Create a copy of DayDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DayDTOCopyWith<DayDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayDTOCopyWith<$Res> {
  factory $DayDTOCopyWith(DayDTO value, $Res Function(DayDTO) then) =
      _$DayDTOCopyWithImpl<$Res, DayDTO>;
  @useResult
  $Res call({String day, String date});
}

/// @nodoc
class _$DayDTOCopyWithImpl<$Res, $Val extends DayDTO>
    implements $DayDTOCopyWith<$Res> {
  _$DayDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DayDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DayDTOImplCopyWith<$Res> implements $DayDTOCopyWith<$Res> {
  factory _$$DayDTOImplCopyWith(
          _$DayDTOImpl value, $Res Function(_$DayDTOImpl) then) =
      __$$DayDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String day, String date});
}

/// @nodoc
class __$$DayDTOImplCopyWithImpl<$Res>
    extends _$DayDTOCopyWithImpl<$Res, _$DayDTOImpl>
    implements _$$DayDTOImplCopyWith<$Res> {
  __$$DayDTOImplCopyWithImpl(
      _$DayDTOImpl _value, $Res Function(_$DayDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of DayDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? date = null,
  }) {
    return _then(_$DayDTOImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DayDTOImpl implements _DayDTO {
  const _$DayDTOImpl({required this.day, required this.date});

  @override
  final String day;
  @override
  final String date;

  @override
  String toString() {
    return 'DayDTO(day: $day, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayDTOImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, day, date);

  /// Create a copy of DayDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DayDTOImplCopyWith<_$DayDTOImpl> get copyWith =>
      __$$DayDTOImplCopyWithImpl<_$DayDTOImpl>(this, _$identity);
}

abstract class _DayDTO implements DayDTO {
  const factory _DayDTO(
      {required final String day, required final String date}) = _$DayDTOImpl;

  @override
  String get day;
  @override
  String get date;

  /// Create a copy of DayDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DayDTOImplCopyWith<_$DayDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

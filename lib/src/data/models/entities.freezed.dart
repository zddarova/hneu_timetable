// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduleEntity {
  String get title => throw _privateConstructorUsedError;
  Map<DateTime, List<ScheduleItemEntity>> get items =>
      throw _privateConstructorUsedError;

  /// Create a copy of ScheduleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleEntityCopyWith<ScheduleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEntityCopyWith<$Res> {
  factory $ScheduleEntityCopyWith(
          ScheduleEntity value, $Res Function(ScheduleEntity) then) =
      _$ScheduleEntityCopyWithImpl<$Res, ScheduleEntity>;
  @useResult
  $Res call({String title, Map<DateTime, List<ScheduleItemEntity>> items});
}

/// @nodoc
class _$ScheduleEntityCopyWithImpl<$Res, $Val extends ScheduleEntity>
    implements $ScheduleEntityCopyWith<$Res> {
  _$ScheduleEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, List<ScheduleItemEntity>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleEntityImplCopyWith<$Res>
    implements $ScheduleEntityCopyWith<$Res> {
  factory _$$ScheduleEntityImplCopyWith(_$ScheduleEntityImpl value,
          $Res Function(_$ScheduleEntityImpl) then) =
      __$$ScheduleEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, Map<DateTime, List<ScheduleItemEntity>> items});
}

/// @nodoc
class __$$ScheduleEntityImplCopyWithImpl<$Res>
    extends _$ScheduleEntityCopyWithImpl<$Res, _$ScheduleEntityImpl>
    implements _$$ScheduleEntityImplCopyWith<$Res> {
  __$$ScheduleEntityImplCopyWithImpl(
      _$ScheduleEntityImpl _value, $Res Function(_$ScheduleEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? items = null,
  }) {
    return _then(_$ScheduleEntityImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, List<ScheduleItemEntity>>,
    ));
  }
}

/// @nodoc

class _$ScheduleEntityImpl implements _ScheduleEntity {
  const _$ScheduleEntityImpl(
      {required this.title,
      required final Map<DateTime, List<ScheduleItemEntity>> items})
      : _items = items;

  @override
  final String title;
  final Map<DateTime, List<ScheduleItemEntity>> _items;
  @override
  Map<DateTime, List<ScheduleItemEntity>> get items {
    if (_items is EqualUnmodifiableMapView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_items);
  }

  @override
  String toString() {
    return 'ScheduleEntity(title: $title, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEntityImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_items));

  /// Create a copy of ScheduleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEntityImplCopyWith<_$ScheduleEntityImpl> get copyWith =>
      __$$ScheduleEntityImplCopyWithImpl<_$ScheduleEntityImpl>(
          this, _$identity);
}

abstract class _ScheduleEntity implements ScheduleEntity {
  const factory _ScheduleEntity(
          {required final String title,
          required final Map<DateTime, List<ScheduleItemEntity>> items}) =
      _$ScheduleEntityImpl;

  @override
  String get title;
  @override
  Map<DateTime, List<ScheduleItemEntity>> get items;

  /// Create a copy of ScheduleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleEntityImplCopyWith<_$ScheduleEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScheduleItemEntity {
  String get subject => throw _privateConstructorUsedError;
  TimeOfDay get startTime => throw _privateConstructorUsedError;
  TimeOfDay get endTime => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get room => throw _privateConstructorUsedError;
  String get teacher => throw _privateConstructorUsedError;
  String get lessonType => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleItemEntityCopyWith<ScheduleItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleItemEntityCopyWith<$Res> {
  factory $ScheduleItemEntityCopyWith(
          ScheduleItemEntity value, $Res Function(ScheduleItemEntity) then) =
      _$ScheduleItemEntityCopyWithImpl<$Res, ScheduleItemEntity>;
  @useResult
  $Res call(
      {String subject,
      TimeOfDay startTime,
      TimeOfDay endTime,
      DateTime date,
      String room,
      String teacher,
      String lessonType});
}

/// @nodoc
class _$ScheduleItemEntityCopyWithImpl<$Res, $Val extends ScheduleItemEntity>
    implements $ScheduleItemEntityCopyWith<$Res> {
  _$ScheduleItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? date = null,
    Object? room = null,
    Object? teacher = null,
    Object? lessonType = null,
  }) {
    return _then(_value.copyWith(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleItemEntitImplCopyWith<$Res>
    implements $ScheduleItemEntityCopyWith<$Res> {
  factory _$$ScheduleItemEntitImplCopyWith(_$ScheduleItemEntitImpl value,
          $Res Function(_$ScheduleItemEntitImpl) then) =
      __$$ScheduleItemEntitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String subject,
      TimeOfDay startTime,
      TimeOfDay endTime,
      DateTime date,
      String room,
      String teacher,
      String lessonType});
}

/// @nodoc
class __$$ScheduleItemEntitImplCopyWithImpl<$Res>
    extends _$ScheduleItemEntityCopyWithImpl<$Res, _$ScheduleItemEntitImpl>
    implements _$$ScheduleItemEntitImplCopyWith<$Res> {
  __$$ScheduleItemEntitImplCopyWithImpl(_$ScheduleItemEntitImpl _value,
      $Res Function(_$ScheduleItemEntitImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? date = null,
    Object? room = null,
    Object? teacher = null,
    Object? lessonType = null,
  }) {
    return _then(_$ScheduleItemEntitImpl(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
    ));
  }
}

/// @nodoc

class _$ScheduleItemEntitImpl implements _ScheduleItemEntit {
  const _$ScheduleItemEntitImpl(
      {required this.subject,
      required this.startTime,
      required this.endTime,
      required this.date,
      required this.room,
      required this.teacher,
      required this.lessonType});

  @override
  final String subject;
  @override
  final TimeOfDay startTime;
  @override
  final TimeOfDay endTime;
  @override
  final DateTime date;
  @override
  final String room;
  @override
  final String teacher;
  @override
  final String lessonType;

  @override
  String toString() {
    return 'ScheduleItemEntity(subject: $subject, startTime: $startTime, endTime: $endTime, date: $date, room: $room, teacher: $teacher, lessonType: $lessonType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleItemEntitImpl &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            (identical(other.lessonType, lessonType) ||
                other.lessonType == lessonType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subject, startTime, endTime,
      date, room, teacher, lessonType);

  /// Create a copy of ScheduleItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleItemEntitImplCopyWith<_$ScheduleItemEntitImpl> get copyWith =>
      __$$ScheduleItemEntitImplCopyWithImpl<_$ScheduleItemEntitImpl>(
          this, _$identity);
}

abstract class _ScheduleItemEntit implements ScheduleItemEntity {
  const factory _ScheduleItemEntit(
      {required final String subject,
      required final TimeOfDay startTime,
      required final TimeOfDay endTime,
      required final DateTime date,
      required final String room,
      required final String teacher,
      required final String lessonType}) = _$ScheduleItemEntitImpl;

  @override
  String get subject;
  @override
  TimeOfDay get startTime;
  @override
  TimeOfDay get endTime;
  @override
  DateTime get date;
  @override
  String get room;
  @override
  String get teacher;
  @override
  String get lessonType;

  /// Create a copy of ScheduleItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleItemEntitImplCopyWith<_$ScheduleItemEntitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

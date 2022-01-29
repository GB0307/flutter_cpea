// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'query_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QueryParamsTearOff {
  const _$QueryParamsTearOff();

  _QueryParams call(
      {String? orderBy,
      Object? startAt,
      Object? startAfter,
      Object? entAt,
      Object? endBefore,
      int? limit,
      int? limitLast,
      bool ascendingOrder = true}) {
    return _QueryParams(
      orderBy: orderBy,
      startAt: startAt,
      startAfter: startAfter,
      entAt: entAt,
      endBefore: endBefore,
      limit: limit,
      limitLast: limitLast,
      ascendingOrder: ascendingOrder,
    );
  }
}

/// @nodoc
const $QueryParams = _$QueryParamsTearOff();

/// @nodoc
mixin _$QueryParams {
  String? get orderBy => throw _privateConstructorUsedError;
  Object? get startAt => throw _privateConstructorUsedError;
  Object? get startAfter => throw _privateConstructorUsedError;
  Object? get entAt => throw _privateConstructorUsedError;
  Object? get endBefore => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get limitLast => throw _privateConstructorUsedError;
  bool get ascendingOrder => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryParamsCopyWith<QueryParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryParamsCopyWith<$Res> {
  factory $QueryParamsCopyWith(
          QueryParams value, $Res Function(QueryParams) then) =
      _$QueryParamsCopyWithImpl<$Res>;
  $Res call(
      {String? orderBy,
      Object? startAt,
      Object? startAfter,
      Object? entAt,
      Object? endBefore,
      int? limit,
      int? limitLast,
      bool ascendingOrder});
}

/// @nodoc
class _$QueryParamsCopyWithImpl<$Res> implements $QueryParamsCopyWith<$Res> {
  _$QueryParamsCopyWithImpl(this._value, this._then);

  final QueryParams _value;
  // ignore: unused_field
  final $Res Function(QueryParams) _then;

  @override
  $Res call({
    Object? orderBy = freezed,
    Object? startAt = freezed,
    Object? startAfter = freezed,
    Object? entAt = freezed,
    Object? endBefore = freezed,
    Object? limit = freezed,
    Object? limitLast = freezed,
    Object? ascendingOrder = freezed,
  }) {
    return _then(_value.copyWith(
      orderBy: orderBy == freezed
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: startAt == freezed ? _value.startAt : startAt,
      startAfter: startAfter == freezed ? _value.startAfter : startAfter,
      entAt: entAt == freezed ? _value.entAt : entAt,
      endBefore: endBefore == freezed ? _value.endBefore : endBefore,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      limitLast: limitLast == freezed
          ? _value.limitLast
          : limitLast // ignore: cast_nullable_to_non_nullable
              as int?,
      ascendingOrder: ascendingOrder == freezed
          ? _value.ascendingOrder
          : ascendingOrder // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$QueryParamsCopyWith<$Res>
    implements $QueryParamsCopyWith<$Res> {
  factory _$QueryParamsCopyWith(
          _QueryParams value, $Res Function(_QueryParams) then) =
      __$QueryParamsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? orderBy,
      Object? startAt,
      Object? startAfter,
      Object? entAt,
      Object? endBefore,
      int? limit,
      int? limitLast,
      bool ascendingOrder});
}

/// @nodoc
class __$QueryParamsCopyWithImpl<$Res> extends _$QueryParamsCopyWithImpl<$Res>
    implements _$QueryParamsCopyWith<$Res> {
  __$QueryParamsCopyWithImpl(
      _QueryParams _value, $Res Function(_QueryParams) _then)
      : super(_value, (v) => _then(v as _QueryParams));

  @override
  _QueryParams get _value => super._value as _QueryParams;

  @override
  $Res call({
    Object? orderBy = freezed,
    Object? startAt = freezed,
    Object? startAfter = freezed,
    Object? entAt = freezed,
    Object? endBefore = freezed,
    Object? limit = freezed,
    Object? limitLast = freezed,
    Object? ascendingOrder = freezed,
  }) {
    return _then(_QueryParams(
      orderBy: orderBy == freezed
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: startAt == freezed ? _value.startAt : startAt,
      startAfter: startAfter == freezed ? _value.startAfter : startAfter,
      entAt: entAt == freezed ? _value.entAt : entAt,
      endBefore: endBefore == freezed ? _value.endBefore : endBefore,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      limitLast: limitLast == freezed
          ? _value.limitLast
          : limitLast // ignore: cast_nullable_to_non_nullable
              as int?,
      ascendingOrder: ascendingOrder == freezed
          ? _value.ascendingOrder
          : ascendingOrder // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_QueryParams implements _QueryParams {
  const _$_QueryParams(
      {this.orderBy,
      this.startAt,
      this.startAfter,
      this.entAt,
      this.endBefore,
      this.limit,
      this.limitLast,
      this.ascendingOrder = true});

  @override
  final String? orderBy;
  @override
  final Object? startAt;
  @override
  final Object? startAfter;
  @override
  final Object? entAt;
  @override
  final Object? endBefore;
  @override
  final int? limit;
  @override
  final int? limitLast;
  @JsonKey()
  @override
  final bool ascendingOrder;

  @override
  String toString() {
    return 'QueryParams(orderBy: $orderBy, startAt: $startAt, startAfter: $startAfter, entAt: $entAt, endBefore: $endBefore, limit: $limit, limitLast: $limitLast, ascendingOrder: $ascendingOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QueryParams &&
            const DeepCollectionEquality().equals(other.orderBy, orderBy) &&
            const DeepCollectionEquality().equals(other.startAt, startAt) &&
            const DeepCollectionEquality()
                .equals(other.startAfter, startAfter) &&
            const DeepCollectionEquality().equals(other.entAt, entAt) &&
            const DeepCollectionEquality().equals(other.endBefore, endBefore) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality().equals(other.limitLast, limitLast) &&
            const DeepCollectionEquality()
                .equals(other.ascendingOrder, ascendingOrder));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(orderBy),
      const DeepCollectionEquality().hash(startAt),
      const DeepCollectionEquality().hash(startAfter),
      const DeepCollectionEquality().hash(entAt),
      const DeepCollectionEquality().hash(endBefore),
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(limitLast),
      const DeepCollectionEquality().hash(ascendingOrder));

  @JsonKey(ignore: true)
  @override
  _$QueryParamsCopyWith<_QueryParams> get copyWith =>
      __$QueryParamsCopyWithImpl<_QueryParams>(this, _$identity);
}

abstract class _QueryParams implements QueryParams {
  const factory _QueryParams(
      {String? orderBy,
      Object? startAt,
      Object? startAfter,
      Object? entAt,
      Object? endBefore,
      int? limit,
      int? limitLast,
      bool ascendingOrder}) = _$_QueryParams;

  @override
  String? get orderBy;
  @override
  Object? get startAt;
  @override
  Object? get startAfter;
  @override
  Object? get entAt;
  @override
  Object? get endBefore;
  @override
  int? get limit;
  @override
  int? get limitLast;
  @override
  bool get ascendingOrder;
  @override
  @JsonKey(ignore: true)
  _$QueryParamsCopyWith<_QueryParams> get copyWith =>
      throw _privateConstructorUsedError;
}

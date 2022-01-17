// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'package.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Package _$PackageFromJson(Map<String, dynamic> json) {
  return _Package.fromJson(json);
}

/// @nodoc
class _$PackageTearOff {
  const _$PackageTearOff();

  _Package call(
      {String? id,
      String? invoice,
      required String recipient,
      required DateTime receivedAt,
      required String address,
      String? deliveredTo,
      DateTime? deliveredAt,
      String? deliveredToDocument,
      String? observations,
      String? deliveryObservations}) {
    return _Package(
      id: id,
      invoice: invoice,
      recipient: recipient,
      receivedAt: receivedAt,
      address: address,
      deliveredTo: deliveredTo,
      deliveredAt: deliveredAt,
      deliveredToDocument: deliveredToDocument,
      observations: observations,
      deliveryObservations: deliveryObservations,
    );
  }

  Package fromJson(Map<String, Object?> json) {
    return Package.fromJson(json);
  }
}

/// @nodoc
const $Package = _$PackageTearOff();

/// @nodoc
mixin _$Package {
  /// Id of the document.
  String? get id => throw _privateConstructorUsedError;

  /// Invoice code
  String? get invoice => throw _privateConstructorUsedError;

  /// The name of who is this package addessed to.
  String get recipient => throw _privateConstructorUsedError;

  /// Date of when the package reached the post office.
  DateTime get receivedAt => throw _privateConstructorUsedError;

  /// Address of the recipient (block and lot).
  String get address => throw _privateConstructorUsedError;

  /// Name of who received the package (usually the same as the recipient).
  String? get deliveredTo => throw _privateConstructorUsedError;

  /// Date of when the recipient received the package.
  DateTime? get deliveredAt => throw _privateConstructorUsedError;

  /// Document number of the person that received the package.
  String? get deliveredToDocument => throw _privateConstructorUsedError;

  /// Notes of when the package was received.
  String? get observations => throw _privateConstructorUsedError;

  /// Notes of when the package was delivered.
  String? get deliveryObservations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageCopyWith<Package> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageCopyWith<$Res> {
  factory $PackageCopyWith(Package value, $Res Function(Package) then) =
      _$PackageCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? invoice,
      String recipient,
      DateTime receivedAt,
      String address,
      String? deliveredTo,
      DateTime? deliveredAt,
      String? deliveredToDocument,
      String? observations,
      String? deliveryObservations});
}

/// @nodoc
class _$PackageCopyWithImpl<$Res> implements $PackageCopyWith<$Res> {
  _$PackageCopyWithImpl(this._value, this._then);

  final Package _value;
  // ignore: unused_field
  final $Res Function(Package) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? invoice = freezed,
    Object? recipient = freezed,
    Object? receivedAt = freezed,
    Object? address = freezed,
    Object? deliveredTo = freezed,
    Object? deliveredAt = freezed,
    Object? deliveredToDocument = freezed,
    Object? observations = freezed,
    Object? deliveryObservations = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      invoice: invoice == freezed
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient: recipient == freezed
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String,
      receivedAt: receivedAt == freezed
          ? _value.receivedAt
          : receivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      deliveredTo: deliveredTo == freezed
          ? _value.deliveredTo
          : deliveredTo // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveredAt: deliveredAt == freezed
          ? _value.deliveredAt
          : deliveredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveredToDocument: deliveredToDocument == freezed
          ? _value.deliveredToDocument
          : deliveredToDocument // ignore: cast_nullable_to_non_nullable
              as String?,
      observations: observations == freezed
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryObservations: deliveryObservations == freezed
          ? _value.deliveryObservations
          : deliveryObservations // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PackageCopyWith<$Res> implements $PackageCopyWith<$Res> {
  factory _$PackageCopyWith(_Package value, $Res Function(_Package) then) =
      __$PackageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? invoice,
      String recipient,
      DateTime receivedAt,
      String address,
      String? deliveredTo,
      DateTime? deliveredAt,
      String? deliveredToDocument,
      String? observations,
      String? deliveryObservations});
}

/// @nodoc
class __$PackageCopyWithImpl<$Res> extends _$PackageCopyWithImpl<$Res>
    implements _$PackageCopyWith<$Res> {
  __$PackageCopyWithImpl(_Package _value, $Res Function(_Package) _then)
      : super(_value, (v) => _then(v as _Package));

  @override
  _Package get _value => super._value as _Package;

  @override
  $Res call({
    Object? id = freezed,
    Object? invoice = freezed,
    Object? recipient = freezed,
    Object? receivedAt = freezed,
    Object? address = freezed,
    Object? deliveredTo = freezed,
    Object? deliveredAt = freezed,
    Object? deliveredToDocument = freezed,
    Object? observations = freezed,
    Object? deliveryObservations = freezed,
  }) {
    return _then(_Package(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      invoice: invoice == freezed
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient: recipient == freezed
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String,
      receivedAt: receivedAt == freezed
          ? _value.receivedAt
          : receivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      deliveredTo: deliveredTo == freezed
          ? _value.deliveredTo
          : deliveredTo // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveredAt: deliveredAt == freezed
          ? _value.deliveredAt
          : deliveredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveredToDocument: deliveredToDocument == freezed
          ? _value.deliveredToDocument
          : deliveredToDocument // ignore: cast_nullable_to_non_nullable
              as String?,
      observations: observations == freezed
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryObservations: deliveryObservations == freezed
          ? _value.deliveryObservations
          : deliveryObservations // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<Identifiable>()
class _$_Package implements _Package {
  _$_Package(
      {this.id,
      this.invoice,
      required this.recipient,
      required this.receivedAt,
      required this.address,
      this.deliveredTo,
      this.deliveredAt,
      this.deliveredToDocument,
      this.observations,
      this.deliveryObservations});

  factory _$_Package.fromJson(Map<String, dynamic> json) =>
      _$$_PackageFromJson(json);

  @override

  /// Id of the document.
  final String? id;
  @override

  /// Invoice code
  final String? invoice;
  @override

  /// The name of who is this package addessed to.
  final String recipient;
  @override

  /// Date of when the package reached the post office.
  final DateTime receivedAt;
  @override

  /// Address of the recipient (block and lot).
  final String address;
  @override

  /// Name of who received the package (usually the same as the recipient).
  final String? deliveredTo;
  @override

  /// Date of when the recipient received the package.
  final DateTime? deliveredAt;
  @override

  /// Document number of the person that received the package.
  final String? deliveredToDocument;
  @override

  /// Notes of when the package was received.
  final String? observations;
  @override

  /// Notes of when the package was delivered.
  final String? deliveryObservations;

  @override
  String toString() {
    return 'Package(id: $id, invoice: $invoice, recipient: $recipient, receivedAt: $receivedAt, address: $address, deliveredTo: $deliveredTo, deliveredAt: $deliveredAt, deliveredToDocument: $deliveredToDocument, observations: $observations, deliveryObservations: $deliveryObservations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Package &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.invoice, invoice) &&
            const DeepCollectionEquality().equals(other.recipient, recipient) &&
            const DeepCollectionEquality()
                .equals(other.receivedAt, receivedAt) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.deliveredTo, deliveredTo) &&
            const DeepCollectionEquality()
                .equals(other.deliveredAt, deliveredAt) &&
            const DeepCollectionEquality()
                .equals(other.deliveredToDocument, deliveredToDocument) &&
            const DeepCollectionEquality()
                .equals(other.observations, observations) &&
            const DeepCollectionEquality()
                .equals(other.deliveryObservations, deliveryObservations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(invoice),
      const DeepCollectionEquality().hash(recipient),
      const DeepCollectionEquality().hash(receivedAt),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(deliveredTo),
      const DeepCollectionEquality().hash(deliveredAt),
      const DeepCollectionEquality().hash(deliveredToDocument),
      const DeepCollectionEquality().hash(observations),
      const DeepCollectionEquality().hash(deliveryObservations));

  @JsonKey(ignore: true)
  @override
  _$PackageCopyWith<_Package> get copyWith =>
      __$PackageCopyWithImpl<_Package>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageToJson(this);
  }
}

abstract class _Package implements Package, Identifiable {
  factory _Package(
      {String? id,
      String? invoice,
      required String recipient,
      required DateTime receivedAt,
      required String address,
      String? deliveredTo,
      DateTime? deliveredAt,
      String? deliveredToDocument,
      String? observations,
      String? deliveryObservations}) = _$_Package;

  factory _Package.fromJson(Map<String, dynamic> json) = _$_Package.fromJson;

  @override

  /// Id of the document.
  String? get id;
  @override

  /// Invoice code
  String? get invoice;
  @override

  /// The name of who is this package addessed to.
  String get recipient;
  @override

  /// Date of when the package reached the post office.
  DateTime get receivedAt;
  @override

  /// Address of the recipient (block and lot).
  String get address;
  @override

  /// Name of who received the package (usually the same as the recipient).
  String? get deliveredTo;
  @override

  /// Date of when the recipient received the package.
  DateTime? get deliveredAt;
  @override

  /// Document number of the person that received the package.
  String? get deliveredToDocument;
  @override

  /// Notes of when the package was received.
  String? get observations;
  @override

  /// Notes of when the package was delivered.
  String? get deliveryObservations;
  @override
  @JsonKey(ignore: true)
  _$PackageCopyWith<_Package> get copyWith =>
      throw _privateConstructorUsedError;
}

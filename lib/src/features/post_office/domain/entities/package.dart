import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gbx_core/core/interfaces/identifiable.dart';

part 'package.freezed.dart';
part 'package.g.dart';

@freezed
class Package with _$Package implements Identifiable {
  const Package._();

  @Implements<Identifiable>()
  factory Package({
    /// Id of the document.
    String? id,

    /// Invoice code
    String? invoice,

    /// The name of who is this package addessed to.
    required String recipient,

    /// Date of when the package reached the post office.
    required DateTime receivedAt,

    /// Address of the recipient (block and lot).
    required String address,

    /// Name of who received the package (usually the same as the recipient).
    String? deliveredTo,

    /// Date of when the recipient received the package.
    DateTime? deliveredAt,

    /// Document number of the person that received the package.
    String? deliveredToDocument,

    /// Notes of when the package was received.
    String? observations,

    /// Notes of when the package was delivered.
    String? deliveryObservations,
  }) = _Package;

  bool get wasDelivered => deliveredAt != null || deliveredTo != null;

  factory Package.fromJson(Map<String, dynamic> json) =>
      _$PackageFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gbx_core/core/index.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData with _$UserData, Identifiable {
  @Implements<Identifiable>()
  factory UserData({
    required String? id,
    required String name,
    required String email,
    required String lote,
    required int celular,
    int? telefone,
    required String nascimento,
    required String cpf,
    String? photoUrl,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

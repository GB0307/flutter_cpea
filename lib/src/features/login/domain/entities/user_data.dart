import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
  factory UserData({
    required String name,
    required String email,
    required String lote,
    required int celular,
    int? telefone,
    required String nascimento,
    required String cpf,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

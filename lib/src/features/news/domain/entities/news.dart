import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gbx_core/core/interfaces/index.dart';

part 'news.freezed.dart';
part 'news.g.dart';

@freezed
class News with _$News implements Identifiable {
  @Implements<Identifiable>()
  factory News({
    required String id,
    required String title,
    required String text,
    required DateTime publishDate,
    String? headerImage,
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}

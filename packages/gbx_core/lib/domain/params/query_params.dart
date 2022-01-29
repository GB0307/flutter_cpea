import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_params.freezed.dart';

@freezed
class QueryParams with _$QueryParams {
  const factory QueryParams({
    String? orderBy,
    Object? startAt,
    Object? startAfter,
    Object? entAt,
    Object? endBefore,
    int? limit,
    int? limitLast,
    @Default(true) bool ascendingOrder,
  }) = _QueryParams;
}

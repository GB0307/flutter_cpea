import 'package:equatable/equatable.dart';

class QueryParams extends Equatable {
  const QueryParams({
    this.orderBy,
    this.ascendingOrder = true,
    this.startAt,
    this.startAfter,
    this.entAt,
    this.endBefore,
    this.limit,
    this.limitLast,
  });

  final String? orderBy;
  final Object? startAt;
  final Object? startAfter;
  final Object? entAt;
  final Object? endBefore;
  final int? limit;
  final int? limitLast;
  final bool ascendingOrder;

  @override
  List<Object?> get props => [
        orderBy,
        startAfter,
        startAt,
        entAt,
        endBefore,
        limit,
        limitLast,
      ];
}

import 'package:dartz/dartz.dart';
import 'package:gbx_core/domain/index.dart';
import 'package:gbx_core/domain/params/cache_params.dart';

abstract class IQueryParams<T> extends IParam {
  const IQueryParams({
    this.orderBy,
    this.startAt,
    this.startAfter,
    this.endAt,
    this.endBefore,
    this.limit,
    this.limitLast,
    this.ascendingOrder = true,
  });

  final String? orderBy;
  final Object? startAt;
  final Object? startAfter;
  final Object? endAt;
  final Object? endBefore;
  final int? limit;
  final int? limitLast;
  final bool ascendingOrder;

  @override
  IQueryParams<T> copyWith({
    String? orderBy,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    int? limit,
    int? limitLast,
    bool? ascendingOrder,
  });
}

class QueryParams<T> extends IQueryParams<T> {
  const QueryParams({
    String? orderBy,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    int? limit,
    int? limitLast,
    bool ascendingOrder = true,
  }) : super(
          orderBy: orderBy,
          startAt: startAt,
          startAfter: startAfter,
          endAt: endAt,
          endBefore: endBefore,
          limit: limit,
          limitLast: limitLast,
          ascendingOrder: ascendingOrder,
        );

  @override
  QueryParams<T> copyWith(
          {String? orderBy,
          Object? startAt,
          Object? startAfter,
          Object? endAt,
          Object? endBefore,
          int? limit,
          int? limitLast,
          bool? ascendingOrder}) =>
      QueryParams(
        orderBy: orderBy ?? this.orderBy,
        startAt: startAt ?? this.startAt,
        startAfter: startAfter ?? this.startAfter,
        endAt: endAt ?? this.endAt,
        endBefore: endBefore ?? this.endBefore,
        limit: limit ?? this.limit,
        limitLast: limitLast ?? this.limitLast,
        ascendingOrder: ascendingOrder ?? this.ascendingOrder,
      );

  @override
  List<Object?> get props => [
        orderBy,
        startAt,
        startAfter,
        endAt,
        endBefore,
        limit,
        limitLast,
        ascendingOrder
      ];
}

class CacheableQueryParams<T> extends IQueryParams<T>
    implements ICacheParams<T> {
  const CacheableQueryParams({
    String? orderBy,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    int? limit,
    int? limitLast,
    bool ascendingOrder = true,
    this.ignoreCache = false,
  }) : super(
          orderBy: orderBy,
          startAt: startAt,
          startAfter: startAfter,
          endAt: endAt,
          endBefore: endBefore,
          limit: limit,
          limitLast: limitLast,
          ascendingOrder: ascendingOrder,
        );

  @override
  final bool ignoreCache;

  @override
  CacheableQueryParams<T> copyWith({
    String? orderBy,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    int? limit,
    int? limitLast,
    bool? ascendingOrder,
    bool? ignoreCache,
  }) =>
      CacheableQueryParams(
        orderBy: orderBy ?? this.orderBy,
        startAt: startAt ?? this.startAt,
        startAfter: startAfter ?? this.startAfter,
        endAt: endAt ?? this.endAt,
        endBefore: endBefore ?? this.endBefore,
        limit: limit ?? this.limit,
        limitLast: limitLast ?? this.limitLast,
        ascendingOrder: ascendingOrder ?? this.ascendingOrder,
        ignoreCache: ignoreCache ?? this.ignoreCache,
      );

  @override
  List<Object?> get props => [
        orderBy,
        startAt,
        startAfter,
        endAt,
        endBefore,
        limit,
        limitLast,
        ascendingOrder,
        ignoreCache,
      ];
}

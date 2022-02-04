import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:gbx_core/core/index.dart';
import 'package:gbx_core/domain/index.dart';
import '../../data/datasources/crud_datasource.dart';

class QueryMapData<T extends Identifiable>
    extends IUseCase<List<CRUDData<T>>, QueryMapParams<T>> {
  const QueryMapData() : super();

  @override
  List<CRUDData<T>> call(QueryMapParams<T> params) {
    final query = params.query;
    // Sort data
    var items = params.data
      ..sort((a, b) {
        var x =
            (a.data[query.orderBy] ?? 0).compareTo(b.data[query.orderBy] ?? 0);
        return x is int ? x : 0;
      });

    // Sublist by start and end
    items = _sublist(params.query, items);

    // ORDER
    if (!query.ascendingOrder) {
      items = items.reversed.toList();
    }

    // Limit items
    if (query.limit != null) {
      items = items.sublist(0, min(query.limit ?? items.length, items.length));
    } else if (query.limitLast != null) {
      items = items.sublist(
          max<int>(0, items.length - (query.limitLast ?? 0)), items.length);
    }

    return items;
  }

  List<CRUDData<T>> _sublist(QueryParams query, List<CRUDData<T>> items) {
    var startAt = 0;
    var endAt = items.length - 1;

    var startSet = false;

    for (var i = 0; i < items.length; i++) {
      // SET START
      var item = items[i];
      if (!startSet &&
          query.startAt != null &&
          item.data[query.orderBy].compareTo(query.startAt) >= 0) {
        startSet = true;
        startAt = i;
      }
      if (!startSet &&
          query.startAfter != null &&
          item.data[query.orderBy].compareTo(query.startAfter) == 0) {
        startSet = true;
        startAt = i + 1;
      } else if (!startSet &&
          query.startAfter != null &&
          item.data[query.orderBy].compareTo(query.startAfter) == 1) {
        startSet = true;
        startAt = i;
      }

      // SET END
      if (query.endAt != null &&
          item.data[query.orderBy].compareTo(query.endAt) <= 0) {
        endAt = i;
      }
      if (query.endBefore != null &&
          item.data[query.orderBy].compareTo(query.endBefore) == -1) {
        endAt = i;
      }
    }

    return items.sublist(startAt, endAt + 1);
  }
}

class QueryMapParams<T extends Identifiable> extends Equatable {
  const QueryMapParams(this.query, this.data);

  final List<CRUDData<T>> data;
  final QueryParams query;

  @override
  List<Object?> get props => [query, data];
}

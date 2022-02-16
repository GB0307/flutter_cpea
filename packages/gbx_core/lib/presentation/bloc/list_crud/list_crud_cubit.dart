// import 'package:flutter/cupertino.dart';
// import 'package:gbx_core/core/index.dart';
// import 'package:gbx_core/domain/index.dart';
// import 'package:gbx_core/presentation/bloc/crud/crud_cubit.dart';

// class ListCrudCubit<T extends Identifiable> extends ICrudCubit<T, List<T>> {
//   ListCrudCubit({
//     required this.id,
//     required CRUDModule<T> module,
//     bool initialLoad = false,
//     CrudState<List<T>>? initialState,
//   }) : super(
//           module: module,
//           initialLoad: initialLoad,
//           initialState: initialState,
//         );

//   final String id;

//   @override
//   Future<DResponse<List<T>>> loadItemState() =>
//       module.query(getQueryParams(false));

//   @override
//   Future<DResponse<List<T>>> loadRefreshedItems() =>
//       module.query(getQueryParams(true));

//   /// Get the query params for loading/refreshing items
//   @protected
//   QueryParams getQueryParams(bool isRefreshing) =>
//       QueryParams(forceRefresh: isRefreshing);
// }

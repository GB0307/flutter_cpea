import 'package:gbx_core/domain/index.dart';

abstract class ICacheParams<T> extends IParam {
  const ICacheParams({required this.ignoreCache});
  final bool ignoreCache;

  @override
  IParam copyWith({bool? ignoreCache});
}

import 'package:gbx_core/domain/index.dart';
import 'package:gbx_core/domain/params/cache_params.dart';

abstract class IReadParams<T> extends IParam implements IdParam {
  @override
  final String id;

  const IReadParams({required this.id});

  @override
  IReadParams copyWith({String? id});
}

class ReadParams<T> extends IReadParams<T> {
  const ReadParams({required String id}) : super(id: id);

  @override
  List<Object?> get props => [id];

  @override
  ReadParams<T> copyWith({String? id}) {
    return ReadParams(id: id ?? this.id);
  }
}

class CacheableReadParams<T> extends IReadParams<T> implements ICacheParams<T> {
  const CacheableReadParams({required String id, this.ignoreCache = false})
      : super(id: id);

  @override
  final bool ignoreCache;

  @override
  List<Object?> get props => [id, ignoreCache];

  @override
  CacheableReadParams<T> copyWith({String? id, bool? ignoreCache}) {
    return CacheableReadParams(
      id: id ?? this.id,
      ignoreCache: ignoreCache ?? this.ignoreCache,
    );
  }
}

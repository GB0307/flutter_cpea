import 'package:cpea/src/core/interfaces/response.dart';
import 'package:equatable/equatable.dart';

abstract class IBaseUseCase<Type, Params> {
  const IBaseUseCase();

  Type call(Params params);
}

abstract class IUseCase<Type, Params>
    extends IBaseUseCase<DResponse<Type>, Params> {
  const IUseCase();
}

abstract class IAsyncUseCase<Type, Params>
    extends IBaseUseCase<Future<DResponse<Type>>, Params> {
  const IAsyncUseCase();
}

class NoParams extends Equatable {
  const NoParams();
  @override
  List<Object> get props => const [];
}

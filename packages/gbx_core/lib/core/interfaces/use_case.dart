import 'package:cpea/src/core/interfaces/response.dart';
import 'package:equatable/equatable.dart';

abstract class IUseCase<Type, Params> {
  const IUseCase();

  Type call(Params params);
}

abstract class IResponseUseCase<Type, Params>
    extends IUseCase<DResponse<Type>, Params> {
  const IResponseUseCase();
}

abstract class IAsyncUseCase<Type, Params>
    extends IUseCase<Future<DResponse<Type>>, Params> {
  const IAsyncUseCase();
}

class NoParams extends Equatable {
  const NoParams();
  @override
  List<Object> get props => const [];
}

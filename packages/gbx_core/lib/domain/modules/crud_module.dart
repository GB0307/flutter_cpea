import 'package:gbx_core/core/interfaces/index.dart';
import '../index.dart';

abstract class CRUDModule<T extends Identifiable> extends IModule {
  CRUDModule({required this.repository}) : super();

  final ICRUDRepository<T> repository;

  late final Create<T> create;
  late final Read<T> read;
  late final Update<T> update;
  late final Delete delete;
  late final Query<T> query;

  @override
  Future<void> initializeDependencies() async {
    create = Create(repository);
    read = Read(repository);
    update = Update(repository);
    delete = Delete(repository);
    query = Query(repository);
  }
}

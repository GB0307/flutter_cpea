import 'package:cpea/src/features/news/domain/entities/news.dart';
import 'package:cpea/src/features/news/domain/news_module.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbx_core/domain/index.dart';
import 'package:get/get.dart';

class NewsCubit extends Cubit<List<News>> {
  factory NewsCubit([String? tag]) {
    if (!Get.isRegistered<NewsCubit>(tag: tag)) {
      Get.put<NewsCubit>(NewsCubit._(), permanent: true, tag: tag);
    }
    return Get.find<NewsCubit>(tag: tag);
  }

  NewsCubit._() : super(const []);

  void loadNews() async {
    var resp = await NewsModule.instance.query(
        const QueryParams(orderBy: "publishDate", ascendingOrder: false));
    if (resp.didSuccess) emit(resp.data);
  }
}

import 'package:cpea/src/features/news/domain/entities/news.dart';
import 'package:cpea/src/features/news/domain/news_module.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbx_core/domain/index.dart';
import 'package:get/get.dart';

class NewsListCubit extends Cubit<List<News>> {
  factory NewsListCubit([String? tag]) {
    if (!Get.isRegistered<NewsListCubit>(tag: tag)) {
      final c = NewsListCubit._();
      Get.put<NewsListCubit>(c, permanent: true, tag: tag);
      c.loadNews();
    }
    return Get.find<NewsListCubit>(tag: tag);
  }

  NewsListCubit._() : super(const []);

  void loadNews() async {
    var resp = await NewsModule.instance.query(
        const QueryParams<News>(orderBy: "publishDate", ascendingOrder: false));
    if (resp.didSuccess) emit(resp.data);
  }
}

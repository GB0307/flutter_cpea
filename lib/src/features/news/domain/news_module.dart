import 'package:gbx_core/gbx_core.dart';
import 'package:get/get.dart';

import 'entities/news.dart';

class NewsModule extends CRUDModule<News> {
  static NewsModule get instance => Get.find<NewsModule>();

  NewsModule({required ICRUDRepository<News> repository})
      : super(repository: repository);

  @override
  Future<void> injectSelf() async {
    Get.put<NewsModule>(this, permanent: true);
  }
}

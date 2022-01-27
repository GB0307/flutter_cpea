import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/utils/l18n.dart';
import 'package:cpea/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:cpea/src/features/news/presentation/widgets/news_builder.dart';
import 'package:cpea/src/features/news/presentation/widgets/news_card.dart';
import 'package:cpea/src/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:gbx_login/gbx_login.dart';
import 'package:go_router/go_router.dart';

class NewsListPage extends StatelessWidget {
  const NewsListPage({Key? key, this.user}) : super(key: key);

  final GbxUser? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.elevated(
        title: Text(L18n.tr.news),
      ),
      body: NewsBuilder(
        builder: (context, news) => ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: padding),
          itemCount: news.length,
          itemBuilder: (context, index) {
            return NewsCard(
              news: news[index],
              onTap: () => context.push(
                Routes.news(news[index].id),
                extra: news[index],
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/utils/l18n.dart';
import 'package:cpea/src/core/widgets/cpea_app_bar.dart';
import 'package:cpea/src/features/news/presentation/bloc/news_cubit.dart';
import 'package:cpea/src/features/news/presentation/widgets/news_builder.dart';
import 'package:cpea/src/features/news/presentation/widgets/news_tile.dart';
import 'package:flutter/material.dart';
import 'package:gbx_login/gbx_login.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key, this.user}) : super(key: key);

  final GbxUser? user;

  @override
  Widget build(BuildContext context) {
    if (NewsCubit().state.isEmpty) NewsCubit().loadNews();
    return Scaffold(
      body: NewsBuilder(
        builder: (context, news) => ListView.builder(
          padding: const EdgeInsets.only(bottom: halfPadding),
          itemCount: news.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return CPEAAppBar(
                titleText: L18n.tr.news,
              );
            }

            return NewsTile(
              news: news[index - 1],
              onTap: () {
                //TODO: OPEN NEWS PAGE
              },
            );
          },
        ),
      ),
    );
  }
}

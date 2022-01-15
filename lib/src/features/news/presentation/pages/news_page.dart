import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/widgets/bottom_nav_bar.dart';
import 'package:cpea/src/features/news/presentation/bloc/news_cubit.dart';
import 'package:cpea/src/core/widgets/cpea_header.dart';
import 'package:cpea/src/features/news/presentation/widgets/news_builder.dart';
import 'package:cpea/src/features/news/presentation/widgets/news_card.dart';
import 'package:flutter/material.dart';
import 'package:gbx_login/gbx_login.dart';

// TODO: CREATE A CARD MENU IN HOME, NEWS IS A SUBMENU OR A NOTIFICATION BADGE

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
              return const SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(bottom: halfPadding),
                  child: CpeaHeader(),
                ),
              );
            }

            return NewsCard(
              news: news[index - 1],
              onTap: () {
                print(news[index - 1].title);
              },
            );
          },
        ),
      ),
      bottomNavigationBar: const BottomNavBar(selected: 0),
    );
  }
}

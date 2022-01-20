import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/features/news/domain/entities/news.dart';
import 'package:cpea/src/features/news/presentation/widgets/news_builder.dart';
import 'package:cpea/src/features/news/presentation/widgets/news_card.dart';
import 'package:cpea/src/features/news/presentation/widgets/news_tile.dart';
import 'package:flutter/material.dart';

class LastNews extends StatelessWidget {
  const LastNews({Key? key, this.onTap}) : super(key: key);

  final void Function(News news)? onTap;

  @override
  Widget build(BuildContext context) {
    return NewsBuilder(
      builder: (context, news) => Column(
        children: news
            .take(3)
            .map(
              (e) => NewsTile.dense(
                news: e,
                onTap: onTap != null ? () => onTap?.call(e) : null,
              ),
            )
            .toList(),
      ),
    );
  }
}

import 'package:cpea/src/core/widgets/cards/card_corner_box.dart';
import 'package:cpea/src/core/widgets/cards/card_tile.dart';
import 'package:cpea/src/core/widgets/content/date_indicator.dart';
import 'package:cpea/src/core/widgets/content/image_loader.dart';
import 'package:cpea/src/features/news/domain/entities/news.dart';
import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({Key? key, required this.news, this.onTap})
      : dense = false,
        super(key: key);

  const NewsTile.dense({Key? key, required this.news, this.onTap})
      : dense = true,
        super(key: key);

  final News news;
  final void Function()? onTap;
  final bool dense;

  @override
  Widget build(BuildContext context) {
    final child = dense
        ? CardCornerBox.horizontal(
            height: double.infinity,
            child: news.headerImage != null
                ? Hero(
                    tag: "news_${news.id}",
                    child:
                        ImageLoader(url: news.headerImage, fit: BoxFit.cover),
                  )
                : DateIndicator(
                    date: news.publishDate,
                    includeDayName: false,
                  ),
          )
        : AspectRatio(
            aspectRatio: 1,
            child: ImageLoader(url: news.headerImage, fit: BoxFit.cover),
          );

    return dense
        ? CardTile.dense(
            title: news.title,
            leading: child,
            onTap: onTap,
          )
        : CardTile(
            title: news.title,
            subtitle: news.text,
            isThreeLine: true,
            leading: child,
            onTap: onTap,
          );
  }
}

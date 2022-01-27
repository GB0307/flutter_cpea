import 'package:cpea/src/core/theme/colors.dart';
import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/utils/l18n.dart';
import 'package:cpea/src/core/widgets/clickable_card.dart';
import 'package:cpea/src/core/widgets/image_loader.dart';
import 'package:cpea/src/features/news/domain/entities/news.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({required this.news, Key? key, this.onTap}) : super(key: key);

  final News news;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ClickableCard(
      margin: const EdgeInsets.symmetric(
        vertical: halfPadding,
        horizontal: horizontalPadding,
      ),
      clip: Clip.antiAlias,
      onTap: onTap,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Stack(
              fit: StackFit.expand,
              children: [
                _image(),
                _timeBadge(),
              ],
            ),
          ),
          const SizedBox(width: double.infinity),
          Padding(
            padding: const EdgeInsets.only(top: padding),
            child: _title(),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: padding, top: quarterPadding),
            child: _subtitle(),
          ),
        ],
      ),
    );
  }

  Widget _title() {
    return _textWrapper(
      child: Text(
        news.title,
        style: Get.textTheme.subtitle1,
      ),
    );
  }

  Widget _subtitle() {
    return _textWrapper(
      child: Text(
        news.text,
        style: Get.textTheme.bodyText1,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _textWrapper({required Widget child}) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: doublePadding,
        ),
        child: child,
      ),
    );
  }

  Widget _image() {
    return Hero(
      tag: "news_${news.id}",
      child: ImageLoader(
        url: news.headerImage,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _timeBadge() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(padding),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(chipBorderRadius),
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: quarterPadding,
              horizontal: padding,
            ),
            color: cardColor,
            child: Text(
              L18n.tr.date(news.publishDate),
              style: Get.textTheme.overline,
            ),
          ),
        ),
      ),
    );
  }
}

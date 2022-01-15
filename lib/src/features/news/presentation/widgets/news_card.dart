import 'package:cpea/src/core/theme/colors.dart';
import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/utils/l18n.dart';
import 'package:cpea/src/features/news/domain/entities/news.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const placeholderImage =
    "https://www.unfe.org/wp-content/uploads/2019/04/SM-placeholder.png";

class NewsCard extends StatelessWidget {
  const NewsCard({required this.news, Key? key, this.onTap}) : super(key: key);

  final News news;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: halfPadding,
        horizontal: horizontalPadding,
      ),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          onTap: onTap,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Stack(
              fit: StackFit.expand,
              children: [
                _image(),
                _title(),
                _timeBadge(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _title() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(cardBorderRadius),
        ),
        child: Container(
          color: cardColor,
          padding: const EdgeInsets.symmetric(
            vertical: halfPadding,
            horizontal: doublePadding,
          ),
          child: Text(
            news.title,
            style: Get.textTheme.subtitle1,
          ),
        ),
      ),
    );
  }

  Widget _image() {
    return Image.network(
      news.headerImage ?? placeholderImage,
      fit: BoxFit.cover,
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

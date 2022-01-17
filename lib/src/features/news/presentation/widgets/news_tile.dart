import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/widgets/card_tile.dart';
import 'package:cpea/src/features/news/domain/entities/news.dart';
import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({Key? key, required this.news, this.onTap}) : super(key: key);

  final News news;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return CardTile(
      title: news.title,
      subtitle: news.text,
      isThreeLine: true,
      clip: Clip.antiAliasWithSaveLayer,
      leading: AspectRatio(
        aspectRatio: 1,
        child: Image.network(
          news.headerImage!,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

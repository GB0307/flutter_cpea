import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/utils/l18n.dart';
import 'package:cpea/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:cpea/src/core/widgets/content/error_indicator.dart';
import 'package:cpea/src/core/widgets/content/image_loader.dart';
import 'package:cpea/src/core/widgets/content/loading_indicator.dart';
import 'package:cpea/src/features/news/domain/entities/news.dart';
import 'package:cpea/src/features/news/presentation/bloc/news_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key, required this.newsId, this.news}) : super(key: key);

  final String newsId;
  final News? news;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NewsCubit, NewsState>(
        bloc: NewsCubit(id: newsId, news: news),
        builder: (context, state) {
          var child = Column(
            children: [
              CustomAppBar(
                title: Text(state.isLoading
                    ? L18n.tr.loading
                    : state.news?.title ?? ""),
              ),
              state.isLoading
                  ? _loading()
                  : state.news == null
                      ? _notFound()
                      : _news(state.news!),
            ],
          );
          return state.news != null
              ? SingleChildScrollView(
                  child: child,
                )
              : child;
        },
      ),
    );
  }

  Widget _loading() {
    return const Expanded(
      child: Center(
        child: LoadingIndicator(),
      ),
    );
  }

  Widget _news(News news) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: Hero(
            tag: "news_${news.id}",
            child: ImageLoader(
              url: news.headerImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: doublePadding),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: horizontalPadding,
          ),
          child: Text(news.text),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: doublePadding,
          ),
          child: Text(
            L18n.tr.publishedAt(news.publishDate),
            style: Get.textTheme.caption,
          ),
        ),
      ],
    );
  }

  Widget _notFound() {
    return Expanded(
      child: Center(
        child: ErrorIndicator(text: L18n.tr.notFound),
      ),
    );
  }
}

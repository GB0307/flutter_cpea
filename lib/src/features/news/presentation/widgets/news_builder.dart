import 'package:cpea/src/features/news/domain/entities/news.dart';
import 'package:cpea/src/features/news/presentation/bloc/news_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsBuilder extends StatelessWidget {
  const NewsBuilder({Key? key, required this.builder, this.tag})
      : super(key: key);

  final Widget Function(BuildContext context, List<News> news) builder;
  final String? tag;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, List<News>>(
      bloc: NewsCubit(tag),
      builder: builder,
    );
  }
}

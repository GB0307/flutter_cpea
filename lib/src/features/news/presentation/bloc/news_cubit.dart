import 'package:cpea/src/features/news/domain/entities/news.dart';
import 'package:cpea/src/features/news/domain/news_module.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbx_core/domain/index.dart';

class NewsCubit extends Cubit<NewsState> {
  final String newsId;

  NewsCubit({String? id, News? news})
      : newsId = id ?? news!.id,
        super(NewsState(news: news)) {
    if (news == null) loadNews();
  }

  void loadNews() async {
    emit(const NewsState());
    var response = await NewsModule.instance.read(ReadParams(id: newsId));
    response.on(
      success: (data) => emit(NewsState(news: data)),
      failure: (failure) => emit(const NewsState(loading: false)),
    );
  }
}

class NewsState extends Equatable {
  final News? news;
  final bool isLoading;

  const NewsState({bool? loading, this.news})
      : isLoading = loading ?? news == null;

  @override
  List<Object?> get props => [news?.id, isLoading];
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cpea/src/core/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';

typedef PlaceholderBuilder = Widget Function(BuildContext context, String url);
typedef ErrorBuilder = Widget Function(
    BuildContext context, String url, dynamic error);

class ImageLoader extends StatelessWidget {
  const ImageLoader(
      {Key? key,
      this.url,
      this.placeholder,
      this.error,
      this.alignment = Alignment.center,
      this.fit})
      : super(key: key);

  final String? url;

  final PlaceholderBuilder? placeholder;
  final ErrorBuilder? error;

  final Alignment alignment;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url ?? "",
      placeholder: placeholder,
      errorWidget: error,
      alignment: alignment,
      fit: fit,
      //progressIndicatorBuilder: (context, url, progress) => Center(
      //  child: LoadingIndicator(progress: progress.progress),
      //),
    );
  }
}

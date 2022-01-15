import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    Key? key,
    required this.url,
    this.size = 52,
    this.onTap,
    this.errorBuilder,
    this.loadingBuilder,
  }) : super(key: key);

  final String url;
  final double size;
  final void Function()? onTap;
  final Widget Function(BuildContext ctx, Object error, StackTrace? trace)?
      errorBuilder;
  final Widget Function(BuildContext ctx, Widget child, ImageChunkEvent? event)?
      loadingBuilder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: Card(
        elevation: 0,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          onTap: onTap,
          child: Image.network(
            url,
            fit: BoxFit.cover,
            loadingBuilder: loadingBuilder,
            errorBuilder: errorBuilder,
          ),
        ),
      ),
    );
  }
}

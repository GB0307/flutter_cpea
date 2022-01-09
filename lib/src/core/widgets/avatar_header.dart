import 'package:flutter/material.dart';

class AvatarHeader extends StatelessWidget {
  const AvatarHeader({
    Key? key,
    this.background,
    this.image,
    this.title = "",
    this.subtitle = "",
    this.radius = 40,
    this.avatarColor,
    this.fontColor = Colors.white,
  }) : super(key: key);

  final Color? background;
  final Color fontColor;
  final Color? avatarColor;

  final ImageProvider? image;
  final String title, subtitle;
  final double radius;

  @override
  Widget build(BuildContext context) {
    var initials = "";
    var words = title.split(" ");
    if (words.isNotEmpty) {
      initials += words.first.substring(0, 1);
    }
    if (words.length > 2) {
      initials += words.last.substring(0, 1);
    }

    Widget? child;
    if (image == null) {
      child = Text(
        initials,
        style: Theme.of(context)
            .textTheme
            .headline4
            ?.copyWith(color: Colors.black45),
      );
    }
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: radius * 2 + 50,
            child: Stack(
              children: [
                ClipPath(
                  clipper: AvatarClipper(radius),
                  child: Container(
                    height: radius * 2,
                    decoration: BoxDecoration(
                      color: background ?? Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Positioned(
                  left: 11,
                  top: radius,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: radius,
                        backgroundImage: image,
                        backgroundColor: avatarColor ?? Colors.black12,
                        child: child,
                      ),
                      SizedBox(width: radius / 4),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(color: fontColor),
                          ),
                          const SizedBox(height: 8),
                          Text(subtitle,
                              style: Theme.of(context).textTheme.subtitle1),
                          const SizedBox(height: 8)
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8)
        ],
      ),
    );
  }
}

class AvatarClipper extends CustomClipper<Path> {
  const AvatarClipper(this.radius, {this.extraPadding = 3});

  final double extraPadding;
  final double radius;

  @override
  Path getClip(Size size) {
    var from = 11 - extraPadding;
    var to = 11 + radius * 2 + extraPadding;
    return Path()
      ..lineTo(0, size.height)
      ..lineTo(from, size.height)
      ..arcToPoint(Offset(to, size.height), radius: const Radius.circular(1))
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

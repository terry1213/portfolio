import 'package:flutter/material.dart';

class ImageWithAnimatedOpacity extends StatelessWidget {
  const ImageWithAnimatedOpacity({
    Key? key,
    required this.image,
    this.fit,
  }) : super(key: key);

  final ImageProvider image;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    final BoxFit fit = this.fit ?? BoxFit.contain;
    return Image(
      image: image,
      fit: fit,
      frameBuilder: (
        BuildContext context,
        Widget child,
        int? frame,
        bool wasSynchronouslyLoaded,
      ) {
        if (wasSynchronouslyLoaded) {
          return child;
        } else {
          return AnimatedOpacity(
            opacity: frame == null ? 0 : 1,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOut,
            child: child,
          );
        }
      },
    );
  }
}

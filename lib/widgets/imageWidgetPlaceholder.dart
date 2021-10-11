import 'package:flutter/material.dart';

class ImageWithAnimatedOpacity extends StatelessWidget {
  final ImageProvider image;
  final Widget placeholder;
  final BoxFit? fit;

  const ImageWithAnimatedOpacity({
    Key? key,
    required this.image,
    required this.placeholder,
    this.fit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BoxFit fit = this.fit ?? BoxFit.contain;
    return Image(
      image: image,
      fit: fit,
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded) {
          return child;
        } else {
          return AnimatedOpacity(
            child: child,
            opacity: frame == null ? 0 : 1,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOut,
          );
        }
      },
    );
  }
}

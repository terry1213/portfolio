import 'package:flutter/material.dart';
import 'package:portfolio/models/post_model.dart';
import 'package:portfolio/utils/url.dart';

import '../../../global_widgets/image_with_animated_opacity.dart';

class PostSection extends StatelessWidget {
  const PostSection({
    Key? key,
    required this.post,
  }) : super(key: key);

  final PostModel post;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 20.0,
        ),
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1.8,
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
                child: ImageWithAnimatedOpacity(
                  image: AssetImage(post.image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              post.title,
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Text(post.body),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton.icon(
                onPressed: () => launchUrlByKey(post.urlKey1),
                icon: const Icon(Icons.launch),
                label: Text(
                  post.title != 'State Management' ? '최근 게시글' : 'GetX 게시글',
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton.icon(
                onPressed: () => launchUrlByKey(post.urlKey2),
                icon: const Icon(Icons.launch),
                label: Text(
                  post.title != 'State Management' ? '전체 게시글' : 'Provider 게시글',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

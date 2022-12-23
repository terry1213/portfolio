part of '../blog_page.dart';

class _PostSection extends StatelessWidget {
  const _PostSection({
    Key? key,
    required this.post,
  }) : super(key: key);

  final BlogPost post;

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
                  image: NetworkImage(post.image),
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
                child: Text(post.detail),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton.icon(
                onPressed: post.openFirstUrl,
                icon: const Icon(Icons.launch),
                label: Text(
                  post.title != 'State Management' ? '최근 게시글' : 'GetX 게시글',
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton.icon(
                onPressed: post.openSecondUrl,
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

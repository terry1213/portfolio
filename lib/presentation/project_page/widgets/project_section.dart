part of '../project_page.dart';

class _ProjectSection extends StatelessWidget {
  const _ProjectSection({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30.0,
          horizontal: 60.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              project.title,
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              '${project.period} (${project.team})',
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 20),
            _ProjectImageSection(
              project: project,
            ),
            const SizedBox(
              height: 20,
            ),
            _ProjectExplainSection(
              project: project,
            ),
          ],
        ),
      ),
    );
  }
}

class _ProjectImageSection extends StatelessWidget {
  const _ProjectImageSection({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: ImageWithAnimatedOpacity(
        image: NetworkImage(project.image),
        fit: BoxFit.fill,
      ),
    );
  }
}

class _ProjectExplainSection extends StatelessWidget {
  const _ProjectExplainSection({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(project.detail),
        const HorizontalDashedDivider(
          space: 30,
        ),
        if (project.function.isNotEmpty)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 16,
                ),
                child: Icon(
                  Icons.circle,
                  size: 8,
                ),
              ),
              const Text('주요 기능:'),
              const SizedBox(width: 10),
              Expanded(
                child: Text(project.function),
              ),
            ],
          ),
        if (project.techStack.isNotEmpty)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 16,
                ),
                child: Icon(
                  Icons.circle,
                  size: 8,
                ),
              ),
              const Text('기술스택:'),
              const SizedBox(width: 10),
              Expanded(
                child: Text(project.techStack),
              ),
            ],
          ),
        if (project.git.isNotEmpty)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 16,
                ),
                child: Icon(
                  Icons.circle,
                  size: 8,
                ),
              ),
              const Text('깃링크:'),
              const SizedBox(width: 10),
              Expanded(
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: project.openGitUrl,
                    child: Text(project.git),
                  ),
                ),
              ),
            ],
          ),
        if (project.link.isNotEmpty)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 16,
                ),
                child: Icon(
                  Icons.circle,
                  size: 8,
                ),
              ),
              const Text('주소:'),
              const SizedBox(width: 10),
              Expanded(
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: project.openLinkUrl,
                    child: Text(project.link),
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}

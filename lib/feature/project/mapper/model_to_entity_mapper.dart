import 'package:portfolio/feature/project/data/model/project_model.dart';
import 'package:portfolio/feature/project/domain/entity/project.dart';

extension ProjectModelExt on ProjectModel {
  Project toEntity() => Project(
        title: title,
        period: period,
        team: team,
        detail: detail,
        function: function,
        techStack: techStack,
        git: git,
        link: link,
        image: image,
      );
}

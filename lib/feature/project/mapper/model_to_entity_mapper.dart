import 'package:portfolio/feature/project/data/model/project_model.dart';
import 'package:portfolio/feature/project/domain/entity/project.dart';

extension ProjectModelExt on ProjectModel {
  Project toEntity() => Project(
        title: title,
        images: images,
        link: link,
        detail: detail,
        function: function,
        techStack: techStack,
      );
}

import 'package:portfolio/feature/career/data/model/app_model.dart';
import 'package:portfolio/feature/career/data/model/career_model.dart';
import 'package:portfolio/feature/career/domain/entity/app.dart';
import 'package:portfolio/feature/career/domain/entity/career.dart';

extension CareerModelExt on CareerModel {
  Career toEntity() => Career(
        company: company,
        period: period,
        position: position,
        apps: apps.map((appModel) => appModel.toEntity()).toList(),
      );
}

extension AppModelExt on AppModel {
  App toEntity() => App(
        name: name,
        detail: detail,
        works: works,
        appStoreLink: appStoreLink,
        googlePlayStoreLink: googlePlayStoreLink,
      );
}

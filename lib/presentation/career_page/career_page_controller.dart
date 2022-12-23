import 'package:flutter/material.dart';
import 'package:portfolio/feature/career/data/repository/career_repository.dart';
import 'package:portfolio/feature/career/domain/entity/career.dart';
import 'package:portfolio/feature/career/domain/usecase/read_all_careers_usecase.dart';
import 'package:portfolio/presentation/career_page/career_page_state.dart';

class CareerPageController extends ChangeNotifier {
  CareerPageController() {
    readAllCareer();
  }

  final CareerRepository _careerRepository = CareerRepository();

  CareerPageState careerPageState = CareerPageState.initial();

  List<Career> get careers => careerPageState.careers;

  Future<void> readAllCareer() async {
    careerPageState = careerPageState.whenLoading();
    final List<Career> careers = await ReadAllCareersUseCase(_careerRepository)
        .execute(const ReadAllCareersParam());
    careerPageState = careerPageState.whenLoaded(careers: careers);
    notifyListeners();
  }
}

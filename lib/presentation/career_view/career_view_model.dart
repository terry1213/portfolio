import 'package:flutter/material.dart';
import 'package:portfolio/feature/career/data/repository/career_repository.dart';
import 'package:portfolio/feature/career/domain/entity/career.dart';
import 'package:portfolio/feature/career/domain/usecase/read_all_careers_usecase.dart';
import 'package:portfolio/presentation/career_view/career_view_state.dart';

class CareerViewModel extends ChangeNotifier {
  CareerViewModel() {
    readAllCareer();
  }

  final CareerRepository _careerRepository = CareerRepository();

  CareerViewState careerViewState = CareerViewState.initial();

  List<Career> get careers => careerViewState.careers;

  Future<void> readAllCareer() async {
    careerViewState = careerViewState.whenLoading();
    final List<Career> careers = await ReadAllCareersUseCase(_careerRepository)
        .execute(const ReadAllCareersParam());
    careerViewState = careerViewState.whenLoaded(careers: careers);
    notifyListeners();
  }
}

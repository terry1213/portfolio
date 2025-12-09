import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:portfolio/core/di/service_locator.dart';
import 'package:portfolio/feature/career/domain/usecase/read_all_careers_usecase.dart';
import 'package:portfolio/ui/view/career_view/career_view_state.dart';

class CareerViewModel extends ChangeNotifier {
  late final ReadAllCareersUseCase _readAllCareersUseCase;
  late final Logger _logger;

  CareerViewModel() {
    _readAllCareersUseCase = getIt<ReadAllCareersUseCase>();
    _logger = getIt<Logger>();
    readAllCareer();
  }

  CareerViewState _state = const CareerViewState.initial();
  CareerViewState get state => _state;

  Future<void> readAllCareer() async {
    _state = const CareerViewState.loading();
    notifyListeners();

    _logger.d('Fetching careers via ViewModel');

    final result = await _readAllCareersUseCase.execute(
      const ReadAllCareersParam(),
    );

    result.when(
      success: (careers) {
        _logger.i('Successfully loaded ${careers.length} careers');
        _state = CareerViewState.loaded(careers: careers);
      },
      failure: (failure) {
        _logger.e('Failed to load careers: $failure');
        _state = CareerViewState.error(failure: failure);
      },
    );

    notifyListeners();
  }

  /// Retry loading careers after error
  Future<void> retry() => readAllCareer();
}

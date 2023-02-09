import 'package:portfolio/feature/career/domain/entity/career.dart';

enum CareerViewStateStatus {
  initial,
  loading,
  loaded,
}

class CareerViewState {
  CareerViewState._({
    required this.careerViewStateStatus,
    required this.careers,
  });

  CareerViewState.initial()
      : this._(
          careerViewStateStatus: CareerViewStateStatus.initial,
          careers: [],
        );

  final CareerViewStateStatus careerViewStateStatus;
  final List<Career> careers;

  CareerViewState whenLoading() => copyWith(
        careerViewStateStatus: CareerViewStateStatus.loading,
        careers: [],
      );

  CareerViewState whenLoaded({required List<Career> careers}) => copyWith(
        careerViewStateStatus: CareerViewStateStatus.loaded,
        careers: careers,
      );

  CareerViewState copyWith({
    CareerViewStateStatus? careerViewStateStatus,
    List<Career>? careers,
  }) =>
      CareerViewState._(
        careerViewStateStatus:
            careerViewStateStatus ?? this.careerViewStateStatus,
        careers: careers ?? this.careers,
      );
}

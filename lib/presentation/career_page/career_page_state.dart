import 'package:portfolio/feature/career/domain/entity/career.dart';

enum CareerPageStateStatus {
  initial,
  loading,
  loaded,
}

class CareerPageState {
  CareerPageState._({
    required this.careerPageStateStatus,
    required this.careers,
  });

  CareerPageState.initial()
      : this._(
          careerPageStateStatus: CareerPageStateStatus.initial,
          careers: [],
        );

  final CareerPageStateStatus careerPageStateStatus;
  final List<Career> careers;

  CareerPageState whenLoading() => copyWith(
        careerPageStateStatus: CareerPageStateStatus.loading,
        careers: [],
      );

  CareerPageState whenLoaded({required List<Career> careers}) => copyWith(
        careerPageStateStatus: CareerPageStateStatus.loaded,
        careers: careers,
      );

  CareerPageState copyWith({
    CareerPageStateStatus? careerPageStateStatus,
    List<Career>? careers,
  }) =>
      CareerPageState._(
        careerPageStateStatus:
            careerPageStateStatus ?? this.careerPageStateStatus,
        careers: careers ?? this.careers,
      );
}

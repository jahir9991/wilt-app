// ignore_for_file: must_be_immutable

part of 'scoring_bloc.dart';

class ScoringState extends Equatable {
  ScoringState({
    this.inputFieldController,
    this.scoringModelObj,
  });

  TextEditingController? inputFieldController;

  ScoringModel? scoringModelObj;

  @override
  List<Object?> get props => [
        inputFieldController,
        scoringModelObj,
      ];
  ScoringState copyWith({
    TextEditingController? inputFieldController,
    ScoringModel? scoringModelObj,
  }) {
    return ScoringState(
      inputFieldController: inputFieldController ?? this.inputFieldController,
      scoringModelObj: scoringModelObj ?? this.scoringModelObj,
    );
  }
}

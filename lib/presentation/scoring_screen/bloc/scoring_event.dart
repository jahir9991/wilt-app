// ignore_for_file: must_be_immutable

part of 'scoring_bloc.dart';

@immutable
abstract class ScoringEvent extends Equatable {}

class ScoringInitialEvent extends ScoringEvent {
  @override
  List<Object?> get props => [];
}

// ignore_for_file: must_be_immutable

part of 'hashtag_bloc.dart';

@immutable
abstract class HashtagEvent extends Equatable {}

class HashtagInitialEvent extends HashtagEvent {
  @override
  List<Object?> get props => [];
}

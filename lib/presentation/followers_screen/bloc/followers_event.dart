// ignore_for_file: must_be_immutable

part of 'followers_bloc.dart';

@immutable
abstract class FollowersEvent extends Equatable {}

class FollowersInitialEvent extends FollowersEvent {
  @override
  List<Object?> get props => [];
}

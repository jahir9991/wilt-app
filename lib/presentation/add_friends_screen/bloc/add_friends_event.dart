// ignore_for_file: must_be_immutable

part of 'add_friends_bloc.dart';

@immutable
abstract class AddFriendsEvent extends Equatable {}

class AddFriendsInitialEvent extends AddFriendsEvent {
  @override
  List<Object?> get props => [];
}

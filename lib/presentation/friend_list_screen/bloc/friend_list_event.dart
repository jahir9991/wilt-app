// ignore_for_file: must_be_immutable

part of 'friend_list_bloc.dart';

@immutable
abstract class FriendListEvent extends Equatable {}

class FriendListInitialEvent extends FriendListEvent {
  @override
  List<Object?> get props => [];
}

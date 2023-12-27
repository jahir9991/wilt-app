// ignore_for_file: must_be_immutable

part of 'activity_feed_bloc.dart';

@immutable
abstract class ActivityFeedEvent extends Equatable {}

class ActivityFeedInitialEvent extends ActivityFeedEvent {
  @override
  List<Object?> get props => [];
}

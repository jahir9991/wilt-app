// ignore_for_file: must_be_immutable

part of 'activity_feed_bloc.dart';

class ActivityFeedState extends Equatable {
  ActivityFeedState({this.activityFeedModelObj});

  ActivityFeedModel? activityFeedModelObj;

  @override
  List<Object?> get props => [
        activityFeedModelObj,
      ];
  ActivityFeedState copyWith({ActivityFeedModel? activityFeedModelObj}) {
    return ActivityFeedState(
      activityFeedModelObj: activityFeedModelObj ?? this.activityFeedModelObj,
    );
  }
}

// ignore_for_file: must_be_immutable

part of 'share_bloc.dart';

class ShareState extends Equatable {
  ShareState({
    this.isCheckbox = false,
    this.shareModelObj,
  });

  ShareModel? shareModelObj;

  bool isCheckbox;

  @override
  List<Object?> get props => [
        isCheckbox,
        shareModelObj,
      ];
  ShareState copyWith({
    bool? isCheckbox,
    ShareModel? shareModelObj,
  }) {
    return ShareState(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      shareModelObj: shareModelObj ?? this.shareModelObj,
    );
  }
}

// ignore_for_file: must_be_immutable

part of 'video_library_bloc.dart';

class VideoLibraryState extends Equatable {
  VideoLibraryState({
    this.selectedDropDownValue,
    this.videoLibraryModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  VideoLibraryModel? videoLibraryModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        videoLibraryModelObj,
      ];
  VideoLibraryState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    VideoLibraryModel? videoLibraryModelObj,
  }) {
    return VideoLibraryState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      videoLibraryModelObj: videoLibraryModelObj ?? this.videoLibraryModelObj,
    );
  }
}

import 'package:equatable/equatable.dart';
import 'package:wilt/data/models/selectionPopupModel/selection_popup_model.dart';
import 'videolibrary_item_model.dart';

// ignore: must_be_immutable
class VideoLibraryModel extends Equatable {
  VideoLibraryModel(
      {this.dropdownItemList = const [], this.videolibraryItemList = const []});

  List<SelectionPopupModel> dropdownItemList;

  List<VideolibraryItemModel> videolibraryItemList;

  VideoLibraryModel copyWith(
      {List<SelectionPopupModel>? dropdownItemList,
      List<VideolibraryItemModel>? videolibraryItemList}) {
    return VideoLibraryModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      videolibraryItemList: videolibraryItemList ?? this.videolibraryItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, videolibraryItemList];
}

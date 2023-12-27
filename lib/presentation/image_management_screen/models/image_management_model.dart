import 'package:equatable/equatable.dart';
import 'gridrectangle_item_model.dart';

// ignore: must_be_immutable
class ImageManagementModel extends Equatable {
  ImageManagementModel({this.gridrectangleItemList = const []});

  List<GridrectangleItemModel> gridrectangleItemList;

  ImageManagementModel copyWith(
      {List<GridrectangleItemModel>? gridrectangleItemList}) {
    return ImageManagementModel(
      gridrectangleItemList:
          gridrectangleItemList ?? this.gridrectangleItemList,
    );
  }

  @override
  List<Object?> get props => [gridrectangleItemList];
}

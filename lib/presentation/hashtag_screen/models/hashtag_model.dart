import 'package:equatable/equatable.dart';
import 'hashtag_item_model.dart';

// ignore: must_be_immutable
class HashtagModel extends Equatable {
  HashtagModel({this.hashtagItemList = const []});

  List<HashtagItemModel> hashtagItemList;

  HashtagModel copyWith({List<HashtagItemModel>? hashtagItemList}) {
    return HashtagModel(
      hashtagItemList: hashtagItemList ?? this.hashtagItemList,
    );
  }

  @override
  List<Object?> get props => [hashtagItemList];
}

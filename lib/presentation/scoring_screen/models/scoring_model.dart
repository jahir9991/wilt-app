import 'package:equatable/equatable.dart';
import 'listglobe_item_model.dart';
import 'listglobe1_item_model.dart';
import 'listglobe2_item_model.dart';

// ignore: must_be_immutable
class ScoringModel extends Equatable {
  ScoringModel(
      {this.listglobeItemList = const [],
      this.listglobe1ItemList = const [],
      this.listglobe2ItemList = const []});

  List<ListglobeItemModel> listglobeItemList;

  List<Listglobe1ItemModel> listglobe1ItemList;

  List<Listglobe2ItemModel> listglobe2ItemList;

  ScoringModel copyWith(
      {List<ListglobeItemModel>? listglobeItemList,
      List<Listglobe1ItemModel>? listglobe1ItemList,
      List<Listglobe2ItemModel>? listglobe2ItemList}) {
    return ScoringModel(
      listglobeItemList: listglobeItemList ?? this.listglobeItemList,
      listglobe1ItemList: listglobe1ItemList ?? this.listglobe1ItemList,
      listglobe2ItemList: listglobe2ItemList ?? this.listglobe2ItemList,
    );
  }

  @override
  List<Object?> get props =>
      [listglobeItemList, listglobe1ItemList, listglobe2ItemList];
}

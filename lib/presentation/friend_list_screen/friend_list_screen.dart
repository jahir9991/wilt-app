import '../friend_list_screen/widgets/friendlist_item_widget.dart';
import 'bloc/friend_list_bloc.dart';
import 'models/friend_list_model.dart';
import 'models/friendlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wilt/core/app_export.dart';
import 'package:wilt/widgets/app_bar/appbar_image.dart';
import 'package:wilt/widgets/app_bar/appbar_title.dart';
import 'package:wilt/widgets/app_bar/custom_app_bar.dart';

class FriendListScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<FriendListBloc>(
        create: (context) => FriendListBloc(
            FriendListState(friendListModelObj: FriendListModel()))
          ..add(FriendListInitialEvent()),
        child: FriendListScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(49),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 12),
                    onTap: () {
                      onTapArrowleft1(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_friend_list".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgSearch,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 12))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 24, right: 16, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(
                              left: 42, top: 12, right: 42, bottom: 12),
                          decoration: AppDecoration.outlineBluegray100,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 12, bottom: 5),
                                    child: Text("lbl_all_friends".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium16BlueA700)),
                                Padding(
                                    padding: getPadding(top: 1, bottom: 3),
                                    child: Text("lbl_recently_added".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium16Bluegray400))
                              ])),
                      SizedBox(
                          width: getHorizontalSize(139),
                          child: Divider(
                              height: getVerticalSize(2),
                              thickness: getVerticalSize(2),
                              color: ColorConstant.blueA700,
                              indent: getHorizontalSize(44))),
                      Padding(
                          padding: getPadding(top: 22),
                          child: BlocSelector<FriendListBloc, FriendListState,
                                  FriendListModel?>(
                              selector: (state) => state.friendListModelObj,
                              builder: (context, friendListModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(17));
                                    },
                                    itemCount: friendListModelObj
                                            ?.friendlistItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      FriendlistItemModel model =
                                          friendListModelObj
                                                  ?.friendlistItemList[index] ??
                                              FriendlistItemModel();
                                      return FriendlistItemWidget(model);
                                    });
                              }))
                    ]))));
  }

  onTapArrowleft1(BuildContext context) {
    NavigatorService.goBack();
  }
}

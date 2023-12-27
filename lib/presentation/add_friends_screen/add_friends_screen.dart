import '../add_friends_screen/widgets/addfriends_item_widget.dart';
import 'bloc/add_friends_bloc.dart';
import 'models/add_friends_model.dart';
import 'models/addfriends_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wilt/core/app_export.dart';
import 'package:wilt/widgets/app_bar/appbar_image.dart';
import 'package:wilt/widgets/app_bar/appbar_title.dart';
import 'package:wilt/widgets/app_bar/custom_app_bar.dart';

class AddFriendsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<AddFriendsBloc>(
        create: (context) => AddFriendsBloc(
            AddFriendsState(addFriendsModelObj: AddFriendsModel()))
          ..add(AddFriendsInitialEvent()),
        child: AddFriendsScreen());
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
                      onTapArrowleft4(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_friends".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgSearch,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 12))
                ]),
            body: Padding(
                padding: getPadding(left: 16, top: 19, right: 16),
                child: BlocSelector<AddFriendsBloc, AddFriendsState,
                        AddFriendsModel?>(
                    selector: (state) => state.addFriendsModelObj,
                    builder: (context, addFriendsModelObj) {
                      return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(26));
                          },
                          itemCount:
                              addFriendsModelObj?.addfriendsItemList.length ??
                                  0,
                          itemBuilder: (context, index) {
                            AddfriendsItemModel model =
                                addFriendsModelObj?.addfriendsItemList[index] ??
                                    AddfriendsItemModel();
                            return AddfriendsItemWidget(model);
                          });
                    }))));
  }

  onTapArrowleft4(BuildContext context) {
    NavigatorService.goBack();
  }
}

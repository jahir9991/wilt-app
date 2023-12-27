import '../models/addfriends_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wilt/core/app_export.dart';
import 'package:wilt/widgets/custom_button.dart';

// ignore: must_be_immutable
class AddfriendsItemWidget extends StatelessWidget {
  AddfriendsItemWidget(this.addfriendsItemModelObj);

  AddfriendsItemModel addfriendsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgProfileimglarge100x100,
          height: getSize(
            100,
          ),
          width: getSize(
            100,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              50,
            ),
          ),
          margin: getMargin(
            bottom: 2,
          ),
        ),
        Padding(
          padding: getPadding(
            top: 3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                addfriendsItemModelObj.roseJHenryTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtGilroySemiBold18,
              ),
              Padding(
                padding: getPadding(
                  top: 12,
                ),
                child: Text(
                  addfriendsItemModelObj.k12MutualfriendsOneTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroyRegular16,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 12,
                ),
                child: Row(
                  children: [
                    CustomButton(
                      height: getVerticalSize(
                        34,
                      ),
                      width: getHorizontalSize(
                        132,
                      ),
                      text: "lbl_add_firend".tr,
                    ),
                    CustomButton(
                      height: getVerticalSize(
                        34,
                      ),
                      width: getHorizontalSize(
                        132,
                      ),
                      text: "lbl_remove".tr,
                      margin: getMargin(
                        left: 16,
                      ),
                      variant: ButtonVariant.FillBluegray100,
                      fontStyle: ButtonFontStyle.GilroyMedium14Bluegray40001,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

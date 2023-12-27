import '../models/listglobe2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wilt/core/app_export.dart';

// ignore: must_be_immutable
class Listglobe2ItemWidget extends StatelessWidget {
  Listglobe2ItemWidget(this.listglobe2ItemModelObj);

  Listglobe2ItemModel listglobe2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          svgPath: ImageConstant.imgGlobeYellow80018x18,
          height: getSize(
            18,
          ),
          width: getSize(
            18,
          ),
          margin: getMargin(
            bottom: 2,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 8,
            top: 1,
            bottom: 4,
          ),
          child: Text(
            listglobe2ItemModelObj.teamnameTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtGilroyBold12,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 185,
          ),
          child: Text(
            listglobe2ItemModelObj.winsTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPilatExtendedHeavy16,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 17,
          ),
          child: Text(
            listglobe2ItemModelObj.lossesTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPilatExtendedHeavy16Black900,
          ),
        ),
      ],
    );
  }
}

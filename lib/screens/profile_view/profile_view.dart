import 'package:flutter/material.dart';
import 'package:ijas_portfolio_flutter/utils/color_utils.dart';
import 'package:ijas_portfolio_flutter/utils/font_utils.dart';
import 'package:ijas_portfolio_flutter/utils/utils.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            height: 174,
            width: 174,
            decoration: BoxDecoration(
                border: Border.all(color: ColorUtils.white, width: 3),
                color: ColorUtils.bgCardBlack,
                shape: BoxShape.circle),
            child: Container(
                clipBehavior: Clip.antiAlias,
                height: 174,
                width: 174,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset(
                  Utils.getAssetJpg("profilepic"),
                  fit: BoxFit.cover,
                )),
          ),
          Text(
            "Ijasrahman Mv",
            style: FontUtils.getProfileName(),
          ),
          Text(
            "Flutter Developer",
            style: FontUtils.getProfileJobStyle(),
          )
        ],
      ),
    );
  }
}

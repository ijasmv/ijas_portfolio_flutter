import 'package:flutter/material.dart';
import 'package:ijas_portfolio_flutter/Utils/ColorUtils.dart';
import 'package:ijas_portfolio_flutter/Utils/Utils.dart';
import 'package:websafe_svg/websafe_svg.dart';

class NavButtons extends StatelessWidget {
  const NavButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 70),
      padding: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
      decoration: BoxDecoration(
          color: ColorUtils.CARD_BG_BLACK,
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(300), bottom: Radius.circular(300))),
      child: Column(
        children: [
          _getIcon("chevron-right"),
          _getIcon("chevron-left"),
        ],
      ),
    );
  }

  Widget _getIcon(String iconName) => Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: WebsafeSvg.asset(Utils.getAssetSvg(iconName),
            height: 25, color: ColorUtils.ICON_GREY),
      );
}

import 'package:flutter/material.dart';
import 'package:ijas_portfolio_flutter/Utils/Utils.dart';
import 'package:ijas_portfolio_flutter/utils/color_utils.dart';
import 'package:websafe_svg/websafe_svg.dart';

class NavButtons extends StatelessWidget {
  const NavButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
      decoration: const BoxDecoration(
          color: ColorUtils.bgCardBlack,
          borderRadius: BorderRadius.vertical(top: Radius.circular(300), bottom: Radius.circular(300))),
      child: Column(
        children: [
          _getIcon("chevron-right"),
          _getIcon("chevron-left"),
        ],
      ),
    );
  }

  Widget _getIcon(String iconName) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: WebsafeSvg.asset(Utils.getAssetSvg(iconName), height: 25, color: ColorUtils.iconGrey),
      );
}

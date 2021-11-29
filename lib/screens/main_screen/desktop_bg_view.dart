import 'package:flutter/material.dart';
import 'package:ijas_portfolio_flutter/screens/main_screen/nav_buttons.dart';
import 'package:ijas_portfolio_flutter/screens/main_screen/side_menu.dart';
import 'package:ijas_portfolio_flutter/utils/color_utils.dart';
import 'package:ijas_portfolio_flutter/utils/utils.dart';

class DesktopMainView extends StatelessWidget {
  final Widget child;
  const DesktopMainView({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [ColorUtils.secondaryColor, ColorUtils.bgGradient]),
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(Utils.getAssetPng("bg_main")))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                  clipBehavior: Clip.antiAlias,
                  margin: const EdgeInsets.only(left: 100, bottom: 70, top: 70),
                  decoration: BoxDecoration(color: ColorUtils.bgCardBlack, borderRadius: BorderRadius.circular(35)),
                  child: child),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: const [SideMenu(), NavButtons()],
            )
          ],
        ));
  }
}

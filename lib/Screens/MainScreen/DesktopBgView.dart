import 'package:flutter/material.dart';
import 'package:ijas_portfolio_flutter/Utils/ColorUtils.dart';
import 'package:ijas_portfolio_flutter/Utils/ScreenUtils.dart';
import 'package:ijas_portfolio_flutter/Utils/Utils.dart';

class DesktopBgView extends StatelessWidget {
  final Widget child;
  const DesktopBgView({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [ColorUtils.SECONDARY_COLOR, ColorUtils.PRIMARY_COLOR]),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(Utils.getAssetPng("bg_main")))),
        child: Container(
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.symmetric(
                horizontal: ScreenUtils.getWidth(75), vertical: 70),
            decoration: BoxDecoration(
                color: ColorUtils.CARD_BG_BLACK,
                borderRadius: BorderRadius.circular(35)),
            child: child));
  }
}

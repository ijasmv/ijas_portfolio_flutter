import 'package:flutter/material.dart';
import 'package:ijas_portfolio_flutter/Utils/ColorUtils.dart';
import 'package:ijas_portfolio_flutter/Utils/FontUtils.dart';
import 'package:ijas_portfolio_flutter/Utils/Utils.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);
  static const List<String> menuIcons = [
    "home",
    "user",
    "graduation-hat",
    "envelope"
  ];
  static const List<String> menuNames = [
    "Home",
    "About Us",
    "Resume",
    "Contact"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 10, top: 70),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: ColorUtils.CARD_BG_BLACK,
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(300), bottom: Radius.circular(300))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            menuIcons.length,
            (index) => Tooltip(
                  waitDuration: Duration(milliseconds: 0),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  textStyle: FontUtils.getMenuLabelStyle(),
                  decoration: BoxDecoration(color: ColorUtils.PRIMARY_COLOR),
                  message: menuNames[index],
                  child: InkWell(
                    enableFeedback: true,
                    onTap: () {
                      print("d");
                    },
                    onHover: (d) {
                      print("object");
                      print(d);
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: WebsafeSvg.asset(
                          Utils.getAssetSvg(menuIcons[index]),
                          height: 30,
                          color: ColorUtils.ICON_GREY),
                    ),
                  ),
                )),
      ),
    );
  }
}

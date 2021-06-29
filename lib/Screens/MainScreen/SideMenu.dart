import 'package:flutter/material.dart';
import 'package:ijas_portfolio_flutter/Services/Provider/MenuModel.dart';
import 'package:ijas_portfolio_flutter/Utils/ColorUtils.dart';
import 'package:ijas_portfolio_flutter/Utils/FontUtils.dart';
import 'package:ijas_portfolio_flutter/Utils/Utils.dart';
import 'package:provider/provider.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SideMenu extends StatefulWidget {
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
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int selectedIndex = 0;
  int? hoverIndex;

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
            SideMenu.menuIcons.length,
            (index) => Tooltip(
                  waitDuration: Duration(milliseconds: 0),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  textStyle: FontUtils.getMenuLabelStyle(),
                  decoration: BoxDecoration(color: ColorUtils.PRIMARY_COLOR),
                  message: SideMenu.menuNames[index],
                  child: InkWell(
                    enableFeedback: true,
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                        Menu menu = Menu.values[index];
                        Provider.of<MenuModel>(context, listen: false)
                            .setMenu(menu);
                      });
                    },
                    onHover: (hovered) {
                      if (hovered) {
                        setState(() {
                          hoverIndex = index;
                        });
                      } else {
                        setState(() {
                          hoverIndex = null;
                        });
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: WebsafeSvg.asset(
                          Utils.getAssetSvg(SideMenu.menuIcons[index]),
                          height: 30,
                          color: index == hoverIndex || index == selectedIndex
                              ? ColorUtils.PRIMARY_COLOR
                              : ColorUtils.ICON_GREY),
                    ),
                  ),
                )),
      ),
    );
  }
}

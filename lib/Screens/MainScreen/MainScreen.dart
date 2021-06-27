import 'package:flutter/material.dart';
import 'package:ijas_portfolio_flutter/Screens/MainScreen/DesktopBgView.dart';
import 'package:ijas_portfolio_flutter/Utils/ColorUtils.dart';
import 'package:ijas_portfolio_flutter/Utils/ResponsiveLayout.dart';
import 'package:ijas_portfolio_flutter/Utils/Utils.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorUtils.DARK_BLACK,
        body: ResponsiveLayout(
            desktop: _getDesktopView(),
            mobile: _getTabletView(),
            tablet: _getTabletView()));
  }

  Widget _getDesktopView() => DesktopMainView(
          child: Row(
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: ColorUtils.DARK_BLACK),
            ),
          ),
        ],
      ));

  Widget _getTabletView() => Container(color: ColorUtils.DARK_BLACK);
}

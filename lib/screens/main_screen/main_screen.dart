import 'package:flutter/material.dart';
import 'package:ijas_portfolio_flutter/screens/main_screen/desktop_bg_view.dart';
import 'package:ijas_portfolio_flutter/screens/profile_view/profile_view.dart';
import 'package:ijas_portfolio_flutter/services/provider/menu_model.dart';
import 'package:ijas_portfolio_flutter/utils/color_utils.dart';
import 'package:ijas_portfolio_flutter/utils/responsive_layout.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late Menu selectedMenu;
  @override
  Widget build(BuildContext context) {
    selectedMenu = Provider.of<MenuModel>(context).menu;
    return Scaffold(
        backgroundColor: ColorUtils.darkBlack,
        body: ResponsiveLayout(
            desktop: _getDesktopView(),
            mobile: _getTabletView(),
            tablet: _getTabletView()));
  }

  Widget _getDesktopView() => DesktopMainView(
          child: Row(
        children: [
          Expanded(flex: 1, child: ProfileView()),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: ColorUtils.darkBlack),
            ),
          ),
        ],
      ));

  Widget _getTabletView() => Container(color: ColorUtils.darkBlack);
}

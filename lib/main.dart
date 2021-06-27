import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ijas_portfolio_flutter/Screens/MainScreen/MainScreen.dart';
import 'package:ijas_portfolio_flutter/Services/Provider/MenuModel.dart';
import 'package:ijas_portfolio_flutter/Utils/ResponsiveLayout.dart';
import 'package:ijas_portfolio_flutter/Utils/ScreenUtils.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1024, 768),
      builder: () => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuModel(),
          )
        ],
        child: MaterialApp(
            title: 'Ijas Portfolio',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.green,
            ),
            home: MainScreen()),
      ),
    );
  }
}

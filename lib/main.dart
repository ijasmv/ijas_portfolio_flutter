import 'package:flutter/material.dart';
import 'package:ijas_portfolio_flutter/screens/main_screen/main_screen.dart';
import 'package:ijas_portfolio_flutter/services/provider/menu_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => MenuModel())],
      child: MaterialApp(
          title: 'Ijas Portfolio',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.green,
          ),
          home: MainScreen()),
    );
  }
}

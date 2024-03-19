import 'package:flutter/material.dart';
import 'package:flutter_admin_pannel/text_theme.dart';
import 'package:flutter_admin_pannel/view/main/main_screen.dart';
import 'package:flutter_admin_pannel/view_model/controllers/MenuAppController.dart';

import 'package:provider/provider.dart';
import 'constant/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: textTheme,

        canvasColor: secondaryColor,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuAppController(),
          ),
        ],
        child: MainScreen(),
      ),
    );
  }
}


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_pannel/text_theme.dart';
import 'package:flutter_admin_pannel/view/main/main_screen.dart';
import 'package:flutter_admin_pannel/view_model/controllers/MenuAppController.dart';

import 'package:provider/provider.dart';
import 'constant/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCGFzozTh1w79r1R2WJB79fg1f82ZJ-zOA",
      appId: "1:868175613153:android:200b3b113b36f16978fba0",
      messagingSenderId: "868175613153",
      projectId: "attendance-manager-4e159",
    ),
    name: 'flutter-admin-panel',
  );
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

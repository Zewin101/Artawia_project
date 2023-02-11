import 'package:alartawia/styles/theme/mytheme.dart';
import 'package:flutter/material.dart';

import 'layout/home_layout/home_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeLayout.routName,
      routes: {
        HomeLayout.routName: (context) => HomeLayout(),
      },
      theme: MyTheme.LightTheme,
      darkTheme: MyTheme.DarkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
    );
  }
}

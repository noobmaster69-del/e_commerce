import 'package:e_commerce/utils/theme/theme.dart';
import 'package:flutter/material.dart';

///Use this class to setup themes, Inital Bindings, ETC.

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: EAppTheme.lightTheme,
      darkTheme: EAppTheme.darkTheme,
    );
  }
}

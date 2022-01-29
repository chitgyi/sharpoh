import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shar_poh/core/utils/themes.dart';
import 'package:shar_poh/feature/app/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        minWidth: 360,
        breakpoints: const [
          ResponsiveBreakpoint.resize(360, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      title: 'SharPoh',
      home: const HomePage(),
      theme: CustomThemes.lightTheme,
      darkTheme: CustomThemes.darkTheme,
    );
  }
}

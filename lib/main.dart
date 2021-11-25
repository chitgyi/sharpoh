import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      title: 'Shar Poh',
      home: const HomePage(),
      theme: CustomThemes.lightTheme,
      darkTheme: CustomThemes.darkTheme,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hairdressers_flutter_app/screens/home.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kBrandColor,
          hintColor: kBaseColor2,
          shadowColor: kShadowColor),
      title: 'Aplicacion de Gifs',
      initialRoute: '/',
      routes: {'/': (BuildContext context) => const MyHomeApp()},
    );
  }
}

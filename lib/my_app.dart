import 'package:flavor_mode/home_page.dart';
import 'package:flutter/material.dart';

import 'common/flavor_config.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: FlavorConfig.instance.values.titleApp,
      theme: ThemeData(
        primarySwatch: FlavorConfig.instance.color,
      ),
      home: const HomePage(),
    );
  }
}

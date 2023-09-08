import 'package:flutter/material.dart';

import 'common/flavor_config.dart';
import 'my_app.dart';

void main() {
  FlavorConfig(
    flavor: FlavorType.prod,
    color: Colors.blue,
    values: const FlavorValues(
      titleApp: "Production App",
    ),
  );

  runApp(const MyApp());
}

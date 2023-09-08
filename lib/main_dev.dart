import 'package:flutter/material.dart';

import 'common/flavor_config.dart';
import 'my_app.dart';

void main() {
  FlavorConfig(
    flavor: FlavorType.dev,
    color: Colors.orange,
    values: const FlavorValues(
      titleApp: "Development App",
    ),
  );

  runApp(const MyApp());
}

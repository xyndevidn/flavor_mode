import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'common/flavor_config.dart';
import 'common/flutter_mode_config.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(FlavorConfig.instance.values.titleApp),
      ),
      body: FutureBuilder(
        future: PackageInfo.fromPlatform(),
        builder: (context, AsyncSnapshot<PackageInfo> snapshot) {
          if (!snapshot.hasData) return Container();
          PackageInfo? packageInfo = snapshot.data;
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Belajar Flutter Flavor dan Flutter Mode",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 26),
                ),
                const Divider(height: 32, thickness: 2),
                Text(
                  "Flavor: ${FlavorConfig.instance.flavor.name}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 22),
                ),
                Text(
                  "Mode: ${FlutterModeConfig.flutterMode}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 22),
                ),
                const Divider(height: 32, thickness: 2),
                Text(
                  "App Name : ${packageInfo?.appName}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 22),
                ),
                Text(
                  "Package Name : ${packageInfo?.packageName}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 22),
                ),
                Text(
                  "Version Name : ${packageInfo?.version}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 22),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../core/page_config.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  static const pageConfig = PageConfig(
    icon: Icons.settings_rounded,
    name: 'settings',
    child: SettingsPage(),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Settings'),
    );
  }
}

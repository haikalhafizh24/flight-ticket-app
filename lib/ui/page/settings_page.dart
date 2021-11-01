import 'package:flutter/material.dart';
import 'package:hai_air/shared/theme.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Settings Page',
          style: blackTextStyle,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hai_air/shared/theme.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Card Page',
          style: blackTextStyle,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hai_air/shared/theme.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Transaction Page',
          style: blackTextStyle,
        ),
      ),
    );
  }
}

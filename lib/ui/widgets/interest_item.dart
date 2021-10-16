import 'package:flutter/material.dart';
import 'package:hai_air/shared/theme.dart';

class InterestItem extends StatelessWidget {

  final String text;

  const InterestItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 6),
            width: 16,
            height: 16,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_check.png'),
              ),
            ),
          ),
          Text(
            text,
            style: blackTextStyle,
            overflow: TextOverflow.fade,
          )
        ],
      ),
    );
  }
}

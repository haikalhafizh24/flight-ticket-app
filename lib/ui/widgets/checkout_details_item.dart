import 'package:flutter/material.dart';
import 'package:hai_air/shared/theme.dart';

class CheckoutDetailsItem extends StatelessWidget {
  final String tittle;
  final String detail;
  final TextStyle style;

  const CheckoutDetailsItem({
    Key? key,
    required this.tittle,
    required this.detail,
    required this.style
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
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
                tittle,
                style: blackTextStyle,
                overflow: TextOverflow.fade,
              )
            ],
          ),
          Text(
            detail,
            style: style.copyWith(
              fontWeight: semiBold,
            ),
          )
        ],
      ),
    );
  }
}

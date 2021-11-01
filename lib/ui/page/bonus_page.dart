import 'package:flutter/material.dart';
import 'package:hai_air/ui/widgets/custom_button.dart';
import '../../shared/theme.dart';

class BonusPage extends StatefulWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  State<BonusPage> createState() => _BonusPageState();
}

class _BonusPageState extends State<BonusPage> {
  Widget bonusCard() {
    return Container(
      width: 300,
      height: 211,
      padding: EdgeInsetsDirectional.all(defaultMargin),
      decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/image_card.png'),
          ),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.5),
              blurRadius: 50,
              offset: const Offset(0, 10),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: whiteTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                    Text(
                      "Haikal Hafizh",
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: medium,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Container(
                width: 24,
                height: 24,
                margin: const EdgeInsets.only(right: 6),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon_plane.png'),
                  ),
                ),
              ),
              Text(
                'Pay',
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 41,
          ),
          Text(
            'Balance',
            style: whiteTextStyle.copyWith(fontWeight: light),
          ),
          Text(
            'IDR 280.000.000',
            style: whiteTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 26,
            ),
          )
        ],
      ),
    );
  }

  Widget title() {
    return Container(
      margin: const EdgeInsets.only(top: 80),
      child: Text(
        'Big Bonus 🎉',
        style: blackTextStyle.copyWith(
          fontSize: 32,
          fontWeight: semiBold,
        ),
      ),
    );
  }

  Widget subTitle() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Text(
        'We give you early credit so that\nyou can buy a flight ticket',
        style: greyTextStyle.copyWith(
          fontSize: 16,
          fontWeight: medium,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget startButton() {
    return CustomButton(
      tittle: 'Start Fly Now',
      width: 220,
      margin: const EdgeInsets.only(
        top: 50,
      ),
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [bonusCard(), title(), subTitle(), startButton()],
        ),
      ),
    );
  }
}

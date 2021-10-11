import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:hai_air/ui/widgets/custom_bottom_navigation_icon.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  Widget customBottomNavigation() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 60,
        margin: EdgeInsets.only(
          bottom: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            CustomBottomNavigationIcon(
              imageUrl: 'assets/icon_home.png',
              isSelected: true,
            ),
            CustomBottomNavigationIcon(
              imageUrl: 'assets/icon_transaction.png',
            ),
            CustomBottomNavigationIcon(
              imageUrl: 'assets/icon_card.png',
            ),
            CustomBottomNavigationIcon(
              imageUrl: 'assets/icon_settings.png',
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          customBottomNavigation(),
        ],
      ),
    );
  }
}

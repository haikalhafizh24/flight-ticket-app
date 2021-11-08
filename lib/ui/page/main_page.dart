import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hai_air/cubit/page_cubit.dart';
import 'package:hai_air/ui/page/card_page.dart';
import 'package:hai_air/ui/page/home_page.dart';
import 'package:hai_air/ui/page/settings_page.dart';
import 'package:hai_air/ui/page/transaction_page.dart';
import 'package:hai_air/ui/widgets/custom_bottom_navigation_icon.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const TransactionPage();
        case 2:
          return const CardPage();
        case 3:
          return const SettingsPage();
        default:
          return const HomePage();
      }
    }

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
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomBottomNavigationIcon(
                imageUrl: 'assets/icon_home.png',
                index: 0,
              ),
              CustomBottomNavigationIcon(
                imageUrl: 'assets/icon_transaction.png',
                index: 1,
              ),
              CustomBottomNavigationIcon(
                imageUrl: 'assets/icon_card.png',
                index: 2,
              ),
              CustomBottomNavigationIcon(
                imageUrl: 'assets/icon_settings.png',
                index: 3,
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              customBottomNavigation(),
            ],
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hai_air/ui/page/bonus_page.dart';
import 'package:hai_air/ui/page/get_started_page.dart';
import 'package:hai_air/ui/page/sign_up_page.dart';
import 'package:hai_air/ui/page/splash_page.dart';

// import 'ui/page/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/get-started' : (context) => const GetStartedPage(),
        '/sign-up' : (context) =>const SignUpPage(),
        '/bonus-page' : (context) => const BonusPage(),
      },
    );
  }
}

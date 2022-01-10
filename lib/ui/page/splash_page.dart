import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hai_air/cubit/auth_cubit.dart';
import '../../shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      User? user = FirebaseAuth.instance.currentUser;
      // ignore: avoid_print
      // print(user?.uid);

      if (user == null) {
        Navigator.pushNamedAndRemoveUntil(
            context, '/get-started', (route) => false);
      } else if (user.displayName == '') {
        context.read<AuthCubit>().getCurrentUser(user.uid);
      } else {
        context.read<AuthCubit>().getCurrentUserGoogle(user.uid);
      }
      Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                'assets/icon_plane.png',
              ))),
            ),
            Text("AIRHAI",
                style: whiteTextStyle.copyWith(
                  fontSize: 34,
                  fontWeight: medium,
                  letterSpacing: 11,
                )),
          ],
        ),
      ),
    );
  }
}

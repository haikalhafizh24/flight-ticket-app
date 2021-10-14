import 'package:flutter/material.dart';
import 'package:hai_air/ui/widgets/custom_button.dart';
import 'package:hai_air/ui/widgets/custom_text_from_field.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(
          top: 50,
        ),
        child: Text("Join us and get\nyour next journey",
            style: blackTextStyle.copyWith(fontSize: 24, fontWeight: bold)),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return const CustomTextFormField(
          tittle: "Name",
          hintText: "Your full name",
        );
      }

      Widget emailInput() {
        return const CustomTextFormField(
          tittle: "Email",
          hintText: "Your email address",
        );
      }

      Widget passwordInput() {
        return const CustomTextFormField(
          tittle: "Password",
          hintText: "Your password",
          obsecureText: true,
        );
      }

      Widget signUpButton() {
        return CustomButton(
          tittle: 'Sign UP',
          onPressed: () {
            Navigator.pushNamed(context, '/bonus-page');
          },
        );
      }

      Widget signInButton() {
        return Container(
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Sign In',
                      style: primaryTextStyle.copyWith(fontSize: 16)),
                )
              ],
            ));
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            signUpButton(),
            signInButton(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        margin: const EdgeInsets.only(top: 60, bottom: 50),
        child: Center(
          child: Text(
            "Terms and Conditions",
            style: greyTextStyle.copyWith(
                fontSize: 14,
                fontWeight: light,
                decoration: TextDecoration.underline),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}

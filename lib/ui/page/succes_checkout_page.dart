import 'package:flutter/material.dart';
import 'package:hai_air/shared/theme.dart';
import 'package:hai_air/ui/widgets/custom_button.dart';

class SuccesCheckoutPage extends StatelessWidget {
  const SuccesCheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget succesCheckoutImage() {
      return Container(
        margin: const EdgeInsets.only(top: 212),
        width: 300,
        height: 150,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image_succes.png'),
          ),
        ),
      );
    }

    Widget tittle() {
      return Container(
        margin: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Text(
              'Well Booked 😍',
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Are you ready to explore the new\nworld of experiences?',
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
            )
          ],
        ),
      );
    }

    Widget myBookingButton() {
      return CustomButton(
        margin: const EdgeInsets.only(top: 50),
        tittle: 'My Booking',
        width: 220,
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
        },
      );
    }

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            succesCheckoutImage(),
            tittle(),
            myBookingButton(),
          ],
        ),
      ),
    );
  }
}

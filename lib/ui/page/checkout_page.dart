import 'package:flutter/material.dart';
import 'package:hai_air/shared/theme.dart';
import 'package:hai_air/ui/widgets/checkout_details_item.dart';
import 'package:hai_air/ui/widgets/custom_button.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Container(
        margin: const EdgeInsets.only(top: 50, bottom: 10),
        child: Column(
          children: [
            Container(
              width: 291,
              height: 65,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Image_Checkout.png'))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CGK',
                      style: blackTextStyle.copyWith(
                          fontSize: 24, fontWeight: semiBold),
                    ),
                    Text(
                      'Tangerang',
                      style: blackTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'TLC',
                      style: blackTextStyle.copyWith(
                          fontSize: 24, fontWeight: semiBold),
                    ),
                    Text(
                      'Ciliwung',
                      style: blackTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget checkoutDetails() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NOTE: DESTINATION TILE
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: const DecorationImage(
                        image: AssetImage('assets/image_destination1.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ciliwung Lake',
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: medium),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Tangerang',
                        style: greyTextStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                      ),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      margin: const EdgeInsets.only(right: 2),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Icon_Star.png'),
                        ),
                      ),
                    ),
                    Text(
                      '4.7',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    )
                  ],
                )
              ],
            ),

            const SizedBox(height: 20),
            Text(
              'Booking Details',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),

            //NOTE: BOOKING DETAILS ITEMS
            CheckoutDetailsItem(
                tittle: 'Traveler', detail: '2 Person', style: blackTextStyle),
            CheckoutDetailsItem(
                tittle: 'Seat', detail: 'A3, B3', style: blackTextStyle),
            CheckoutDetailsItem(
                tittle: 'Insurance', detail: 'YES', style: greenTextStyle),
            CheckoutDetailsItem(
                tittle: 'Refundable', detail: 'NO', style: redTextStyle),
            CheckoutDetailsItem(
                tittle: 'VAT', detail: '45%', style: blackTextStyle),
            CheckoutDetailsItem(
                tittle: 'Price',
                detail: 'IDR 15.000.000',
                style: blackTextStyle),
            CheckoutDetailsItem(
                tittle: 'Grand Total',
                detail: 'IDR 19.000.000',
                style: primaryTextStyle),
          ],
        ),
      );
    }

    Widget paymenDetails() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Details',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 70,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/image_card.png'),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 6),
                          height: 24,
                          width: 24,
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
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IDR 75.000.000',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        'Current Balance',
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget payButton() {
      return CustomButton(
        margin: const EdgeInsets.symmetric(vertical: 30),
        tittle: 'Pay Now',
        onPressed: () {},
      );
    }

      Widget tacButton() {
      return Container(
        margin: const EdgeInsets.only( bottom: 30),
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
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          route(),
          checkoutDetails(),
          paymenDetails(),
          payButton(),
          tacButton()
        ],
      ),
    );
  }
}

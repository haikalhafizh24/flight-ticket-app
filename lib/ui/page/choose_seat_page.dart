import 'package:flutter/material.dart';
import 'package:hai_air/shared/theme.dart';
import 'package:hai_air/ui/widgets/custom_button.dart';
import 'package:hai_air/ui/widgets/seat_item.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Select Your \nFavorite Seat',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget seatStatus() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  right: 6,
                ),
                width: 16,
                height: 16,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Icon_availabel.png'),
                  ),
                ),
              ),
              Text(
                'Available',
                style: blackTextStyle.copyWith(
                  fontWeight: regular,
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  right: 6,
                ),
                width: 16,
                height: 16,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon_selected.png'),
                  ),
                ),
              ),
              Text(
                'Selected',
                style: blackTextStyle.copyWith(
                  fontWeight: regular,
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  right: 6,
                ),
                width: 16,
                height: 16,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon_unavailable.png'),
                  ),
                ),
              ),
              Text(
                'Unavailable',
                style: blackTextStyle.copyWith(
                  fontWeight: regular,
                ),
              )
            ],
          ),
        ],
      );
    }

    Widget selectSeat() {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 30),
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          children: [
            // NOTE: SEAT INDICATOR
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      "A",
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      "B",
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      " ",
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      "C",
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      "D",
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),

            //NOTE: SEAT
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SeatItem(status: 2),
                  const SeatItem(status: 2),
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(
                        '1',
                        style: greyTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                  const SeatItem(status: 0),
                  const SeatItem(status: 2),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SeatItem(status: 0),
                  const SeatItem(status: 0),
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(
                        '2',
                        style: greyTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                  const SeatItem(status: 2),
                  const SeatItem(status: 0),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SeatItem(status: 0),
                  const SeatItem(status: 0),
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(
                        '3',
                        style: greyTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                  const SeatItem(status: 0),
                  const SeatItem(status: 2),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SeatItem(status: 2),
                  const SeatItem(status: 2),
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(
                        '4',
                        style: greyTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                  const SeatItem(status: 0),
                  const SeatItem(status: 2),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SeatItem(status: 0),
                  const SeatItem(status: 0),
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(
                        '5',
                        style: greyTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                  const SeatItem(status: 0),
                  const SeatItem(status: 0),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SeatItem(status: 2),
                  const SeatItem(status: 2),
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(
                        '6',
                        style: greyTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                  const SeatItem(status: 1),
                  const SeatItem(status: 1),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SeatItem(status: 2),
                  const SeatItem(status: 0),
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(
                        '7',
                        style: greyTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                  const SeatItem(status: 0),
                  const SeatItem(status: 0),
                ],
              ),
            ),

            // NOTE: YOUR SEAT
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your seat',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'C6, D6',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),

            // NOTE: TOTAL
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'IDR 18.000.000',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget checkoutButton() {
      return CustomButton(
        margin: const EdgeInsets.only(bottom: 46),
        tittle: 'Checkout',
        onPressed: () {},
      );
    }

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          title(),
          seatStatus(),
          selectSeat(),
          checkoutButton(),
        ],
      ),
    );
  }
}

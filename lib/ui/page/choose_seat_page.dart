import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hai_air/cubit/seat_cubit.dart';
import 'package:hai_air/models/destinations_model.dart';
import 'package:hai_air/models/transaction_model.dart';
import 'package:hai_air/shared/theme.dart';
import 'package:hai_air/ui/page/checkout_page.dart';
import 'package:hai_air/ui/widgets/custom_button.dart';
import 'package:hai_air/ui/widgets/seat_item.dart';
import 'package:intl/intl.dart';

class ChooseSeatPage extends StatelessWidget {
  final DestinationModel destinations;
  const ChooseSeatPage(this.destinations, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          bottom: 20,
        ),
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
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
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
                      const SeatItem(
                        id: 'A1',
                      ),
                      const SeatItem(
                        id: 'B1',
                      ),
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
                      const SeatItem(
                        id: 'C1',
                      ),
                      const SeatItem(
                        id: 'D1',
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SeatItem(
                        id: 'A2',
                      ),
                      const SeatItem(
                        id: 'B2',
                      ),
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
                      const SeatItem(
                        id: 'C2',
                      ),
                      const SeatItem(
                        id: 'D2',
                        isAvailable: false,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SeatItem(
                        id: 'A3',
                      ),
                      const SeatItem(
                        id: 'B3',
                      ),
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
                      const SeatItem(
                        id: 'C3',
                      ),
                      const SeatItem(
                        id: 'D3',
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SeatItem(
                        id: 'A4',
                        isAvailable: false,
                      ),
                      const SeatItem(
                        id: 'B4',
                        isAvailable: false,
                      ),
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
                      const SeatItem(
                        id: 'C4',
                      ),
                      const SeatItem(
                        id: 'D4',
                        isAvailable: false,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SeatItem(
                        id: 'A5',
                      ),
                      const SeatItem(
                        id: 'B5',
                      ),
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
                      const SeatItem(
                        id: 'C5',
                      ),
                      const SeatItem(
                        id: 'D5',
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SeatItem(
                        id: 'A6',
                      ),
                      const SeatItem(
                        id: 'B6',
                        isAvailable: false,
                      ),
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
                      const SeatItem(
                        id: 'C6',
                      ),
                      const SeatItem(
                        id: 'D6',
                      ),
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
                      Expanded(
                        child: Text(
                          state.join(', '),
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                          textAlign: TextAlign.end,
                          maxLines: 2,
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
                        NumberFormat.currency(
                          locale: 'id',
                          symbol: 'IDR ',
                          decimalDigits: 0,
                        ).format(state.length * destinations.price),
                        style: primaryTextStyle.copyWith(
                            fontSize: 16, fontWeight: semiBold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      );
    }

    Widget checkoutButton() {
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          return CustomButton(
            margin: const EdgeInsets.only(bottom: 46),
            tittle: 'Checkout',
            onPressed: () {

                    int price = (destinations.price * state.length).toInt();

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckoutPage(
                    TransactionModel(
                      destination: destinations,
                      amountOfTraveler: state.length,
                      selectedSeat:state.join(', '),
                      insurance: true,
                      vat: 0.08,
                      refundable: false,
                      price:price,
                      grandTotal: price + (price * 0.08).toInt(),
                    ),
                  ),
                ),
              );
            },
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
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

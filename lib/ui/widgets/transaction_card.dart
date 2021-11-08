import 'package:flutter/material.dart';
import 'package:hai_air/models/transaction_model.dart';
import 'package:hai_air/shared/theme.dart';
import 'package:intl/intl.dart';

import 'checkout_details_item.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;

  const TransactionCard(this.transaction,{ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    image: DecorationImage(
                        image: NetworkImage(
                          transaction.destination.imageUrl,
                        ),
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
                        transaction.destination.name,
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: medium),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        transaction.destination.city,
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
                      transaction.destination.rating.toString(),
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
              tittle: 'Traveler',
              detail: '${transaction.amountOfTraveler} Person',
              style: blackTextStyle,
            ),
            CheckoutDetailsItem(
              tittle: 'Seat',
              detail: transaction.selectedSeat,
              style: blackTextStyle,
            ),
            CheckoutDetailsItem(
              tittle: 'Insurance',
              detail: transaction.insurance ? 'YES' : 'NO',
              style: transaction.insurance ? greenTextStyle : redTextStyle,
            ),
            CheckoutDetailsItem(
              tittle: 'Refundable',
              detail: transaction.refundable ? 'YES' : 'NO',
              style: transaction.refundable ? greenTextStyle : redTextStyle,
            ),
            CheckoutDetailsItem(
              tittle: 'VAT',
              detail: '${(transaction.vat * 100).toStringAsFixed(0)}%',
              style: blackTextStyle,
            ),
            CheckoutDetailsItem(
              tittle: 'Price',
              detail: NumberFormat.currency(
                locale: 'id',
                symbol: 'IDR ',
                decimalDigits: 0,
              ).format(transaction.price),
              style: blackTextStyle,
            ),
            CheckoutDetailsItem(
              tittle: 'Grand Total',
              detail: NumberFormat.currency(
                locale: 'id',
                symbol: 'IDR ',
                decimalDigits: 0,
              ).format(transaction.grandTotal),
              style: primaryTextStyle,
            ),
          ],
        ),
      );
  }
}
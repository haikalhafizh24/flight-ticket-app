import 'package:equatable/equatable.dart';
import 'package:hai_air/models/destinations_model.dart';

class TransactionModel extends Equatable {
  final DestinationModel destination;
  final int amountOfTravelerl;
  final String selectedSeat;
  final bool insurance;
  final bool refundable;
  final double vat;
  final int price;
  final int grandTotal;

  const TransactionModel({
    required this.destination,
    this.amountOfTravelerl = 0,
    this.selectedSeat = '',
    this.insurance = false,
    this.refundable = false,
    this.vat = 0,
    this.price = 0,
    this.grandTotal = 0,
  });

  @override
  List<Object?> get props => [
        destination,
        amountOfTravelerl,
        selectedSeat,
        insurance,
        refundable,
        vat,
        price,
        grandTotal,
      ];
}

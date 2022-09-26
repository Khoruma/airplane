part of 'models.dart';

class TransactionModel extends Equatable {
  final DestinationModel destination;
  final int amoutOfTraveller;
  final String selectedSeats;
  final bool insurance;
  final bool refundable;
  final double vat;
  final int price;
  final int gradTotal;

  TransactionModel({
    required this.destination,
    this.amoutOfTraveller = 0,
    this.selectedSeats = '',
    this.insurance = false,
    this.refundable = false,
    this.vat = 0,
    this.price = 0,
    this.gradTotal = 0,
  });

  @override
  List<Object?> get props => [
        destination,
        amoutOfTraveller,
        selectedSeats,
        insurance,
        refundable,
        vat,
        price,
        gradTotal,
      ];
}

part of 'services.dart';

class TransactionService {
  CollectionReference _transactionReff =
      FirebaseFirestore.instance.collection('transactions');

  Future<void> createTransaction(TransactionModel transaction) async {
    try {
      _transactionReff.add({
        'destination': transaction.destination.toJson(),
        'amountOfTraveller': transaction.amoutOfTraveller,
        'selectedSeat': transaction.selectedSeats,
        'insurance': transaction.insurance,
        'refundable': transaction.refundable,
        'vat': transaction.vat,
        'price': transaction.price,
        'grandTotal': transaction.gradTotal,
      });
    } catch (e) {}
  }
}

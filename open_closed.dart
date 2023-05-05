enum PayType {
  card,
  taxes,
}

class Payment {
  void _payCreditCard() => print("paying credit card");
  void _payTaxes() => print("paying taxes");

  void pay(PayType type) {
    if (type == PayType.card) {
      _payCreditCard();
    } else if (type == PayType.taxes) {
      _payTaxes();
    }
  }
}

// Solution

// // abstract class that will not be modified
abstract class PaymentNew {
  int value = 10;
  void pay();
}

// // extension - re-use the value
class PaymentTaxes extends PaymentNew {
  @override
  void pay() => print("paying taxes $value");
}

// inherintance -> override value
class PaymentCreditCard implements PaymentNew {
  @override
  int value = 20;

  @override
  void pay() => print("paying credit card $value");
}

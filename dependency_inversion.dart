// depender de abstrações e não de classes concretas

class PaymentRepository {
  void save() => print("saving changes on db");
}

class CheckingAccount {
  late PaymentRepository _repository;

  CheckingAccount() {
    _repository = new PaymentRepository();
  }

  saveChanges() {
    _repository.save();
  }
}

// Solution

abstract class IPaymentRepository {
  void save();
}

class PaymentRepositoryImpl implements IPaymentRepository {
  @override
  void save() {
    print("finish payment");
  }
}

class PaymentRepositoryMock implements IPaymentRepository {
  @override
  void save() {
    print("mock");
  }
}

class CheckingAccountNew {
  CheckingAccountNew({
    required IPaymentRepository paymentRepository,
  }) {
    _repository = paymentRepository;
  }

  late IPaymentRepository _repository;

  saveChanges() {
    _repository.save();
  }
}

main() {
  var account = CheckingAccountNew(paymentRepository: PaymentRepositoryImpl());
  account.saveChanges();
}

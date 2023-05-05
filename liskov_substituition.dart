// os subtipos devem ser substituidos pelo seu tipo base

abstract class Account {
  void deposit() => print("deposit");
  void transfer() => print("transfer");
  void loan() => print("loan");
}

class CheckingAccount implements Account {
  @override
  void deposit() {
    print("deposit");
  }

  @override
  void loan() {
    print("loan");
  }

  @override
  void transfer() {
    print("transfer");
  }
}

class SavingsAccount implements Account {
  @override
  void deposit() {
    print("deposit");
  }

  @override
  void loan() {
    throw Exception(
        "Savings Account doesnt offer loan"); // the problem is that the savings account can replace its parent since it doesnt have the same behavior as its parent.
  }

  @override
  void transfer() {
    throw Exception("Savings Account doesnt offer loan");
  }
}

void main(List<String> args) {
  Account c = CheckingAccount();
  c.transfer();

  c = SavingsAccount();
  c.transfer();
}

// objetos filhos de um mesmo pai, porém com funcionamento diferente
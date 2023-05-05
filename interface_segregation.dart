// interfaces especificas é melhor do que uma interface geral

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
    throw Exception("Savings Account doesnt offer loan");
  }

  @override
  void transfer() {
    throw Exception("Savings Account doesnt offer loan");
  }
}

// Solution

abstract class AccountNew {
  void deposit() => print("deposit");
}

abstract class Services {
  void transfer() => print("transfer");
  void loan() => print("loan");
}

class SavingsAccountNew implements AccountNew {
  @override
  void deposit() {
    print("deposit");
  }
}

class CheckingAccountNew implements AccountNew, Services {
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

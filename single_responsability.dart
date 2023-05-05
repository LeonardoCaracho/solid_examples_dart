class Account {
  validateAccount() {
    // crucial bussiness logic
  }

  saveChanges() {
    print('saving changes on db');
  }
}

// Solution

class AccountRepository {
  void save() => print("saving changes on db");
}

class AccountNew {
  AccountRepository repository = AccountRepository();

  validateAccount() {
    // crucial bussiness logic
  }

  saveChanges() {
    repository.save();
  }
}

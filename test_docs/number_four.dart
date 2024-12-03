class BankAccount {
  String _accountNumber;
  double _balance;

  BankAccount(this._accountNumber, this._balance);
  String get accountNumber => _accountNumber;
  double get balance => _balance;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposit berhasil: ${amount}');
    } else {
      print('Jumlah deposit harus lebih dari 0.');
    }
  }


  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Penarikan berhasil: ${amount}');
    } else if (amount > _balance) {
      print('Penarikan gagal: Saldo tidak mencukupi.');
    } else {
      print('Jumlah penarikan harus lebih dari 0.');
    }
  }

  void displayAccountInfo() {
    print('-----------------------------');
    print('Nomor Akun: $_accountNumber');
    print('Saldo Saat Ini: ${_balance}');
    print('-----------------------------');
  }
}

void main() {
  BankAccount myAccount = BankAccount('987654321', 150000);

  myAccount.displayAccountInfo();

  print('Nomor Akun: ${myAccount.accountNumber}');
  print('Saldo Awal: ${myAccount.balance}');

  myAccount.deposit(300.0);
  myAccount.withdraw(200.0);
  myAccount.displayAccountInfo();
}
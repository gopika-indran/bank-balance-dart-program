class BankAccount {
  int accountNumber;
  String accountHolder;
  double balance;

 
  BankAccount(this.accountNumber, this.accountHolder, this.balance);

  // Method to deposit money into the account
  void deposit(double amount) {
    balance += amount;
    print('Deposit of \$${amount.toStringAsFixed(2)} successful.');
  }

  // Method to withdraw money from the account
  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print('Withdrawal of \$${amount.toStringAsFixed(2)} successful.');
    } else {
      print('Insufficient funds. Withdrawal failed.');
    }
  }

  // Method to display account information
  void getAccountInfo() {
    print('Account Number: $accountNumber');
    print('Account Holder: $accountHolder');
    print('Current Balance: \$${balance.toStringAsFixed(2)}');
  }
}

void main() {
  // Creating a new bank account
  BankAccount myAccount = BankAccount(123456789, 'John Doe', 1000.0);

  // Depositing money
  myAccount.deposit(500.0);

  // Withdrawing money
  myAccount.withdraw(200.0);

  // Displaying account information
  myAccount.getAccountInfo();
}

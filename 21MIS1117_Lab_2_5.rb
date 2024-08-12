class BankAccount
  def initialize(name, ib = 0)
    @name = name
    @balance = ib
  end

  def details
    "Acc_Details: #{@name}, Balance: #{@balance}"
  end

  def bal
    "Balance: #{@balance}"
  end

  def withdraw(amount)
    if amount > @balance
      "Insufficient funds."
    else
      @balance -= amount
      "Withdrew #{amount}. New balance: #{@balance}"
    end
  end

  def deposit(amount)
    @balance += amount
    "Deposited #{amount}. New balance: #{@balance}"
  end
end

account = BankAccount.new("Vishwa", 5000)
puts account.details
puts account.withdraw(500)
puts account.bal
puts account.deposit(200)
puts account.bal



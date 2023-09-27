class Account
  attr_reader :balance, :number

  def initialize(account_number, initial_balance = 0)
    @number = account_number
    @balance = initial_balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance >= amount ? @balance -= amount : 'Low balance'
  end
end

module CustomerModule
  def print_account_statements
    print_statements { |account| puts "Account balance for #{account.number} is: #{account.balance}" }
  end

  def deposit(number, amount)
    account = get_account(number)
    account.nil? ? 'Account not found' : account.deposit(amount)
  end

  def withdraw(number, amount)
    account = get_account(number)
    account.nil? ? 'Account not found' : account.withdraw(amount)
  end
end

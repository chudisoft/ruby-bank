module CustomerModule
    def print_account_statements
        print_statements {|account| puts "Account balance for #{account.number} is: #{account.balance}"}
    end

    def deposit(number, amount)
        account = get_account(number)
        return account != nil ? account.deposit(amount) : "Account not found"
    end

    def withdraw(number, amount)
        account = get_account(number)
        return account != nil ? account.withdraw(amount) : "Account not found"
    end

end

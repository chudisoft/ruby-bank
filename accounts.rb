class Account
    attr_reader :balance
    attr_reader :number

    def initialize(account_number, initial_balance = 0)
        @number = account_number
        @balance = initial_balance
    end

    def deposit(amount)
        return @balance += amount
    end

    def withdraw(amount)
        return @balance >= amount ? @balance -= amount : "Low balance"
        # return @balance >= amount &.. @balance += amount ? "Low balance"
    end
end

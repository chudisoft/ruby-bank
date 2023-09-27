class Customer
  include CustomerModule
  attr_reader :accounts

  def initialize(*data)
    @name = data[0]
    @age = data[1]
    @phone = data[2]
    @email = data[3]
    @accounts = []
  end

  def create_account(balance)
    @accounts << Account.new(@accounts.length + 1, balance)
  end

  def print_statements(&block)
    puts "Printing statements for: #{@name}"
    @accounts.each(&block)
  end

  def get_account(num)
    @accounts.find { |account| account.number == num }
  end
end

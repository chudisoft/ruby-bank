require_relative 'accounts'
require_relative 'customer_module'
require_relative 'customer_class'

customer = Customer.new('Chris', 31, '+2348160274007', 'akwuderaja@gmail.com')
customer.create_account(1000)
customer.create_account(2500)
customer.create_account(4500)
customer.print_account_statements
customer.accounts.each { |account| puts "#{account.number} balance after deposit of 25: #{account.deposit(25)}" }
customer.print_account_statements
customer.accounts.each { |account| puts "#{account.number} balance after withdraw of 25: #{account.withdraw(25)}" }
customer.print_account_statements

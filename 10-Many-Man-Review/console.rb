require 'pry'
require_relative './customers'
require_relative './banks'
require_relative './accounts'

c1 = Customer.new("Austin","Savings")
c2 = Customer.new("Jakob", "Checking")
c3 = Customer.new("Maria","Savings")

b1 = Bank.new("Chase")
b2 = Bank.new("BOFA")
b3 = Bank.new("WellsFargo")

a1 = Account.new(c1, b1, 1000)
a2 = Account.new(c2, b2, 4)
a3 = Account.new(c3, b3, 100000)
a4 = Account.new(c1, b3, 5000)
a5 = Account.new(c2, b2, 1000)

binding.pry

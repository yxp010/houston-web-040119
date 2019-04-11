require 'pry'
require_relative './customers'
require_relative './banks'
require_relative './accounts'

c1 = Customer.new("Vidhi",1234567890)
c2 = Customer.new("Nick",1234648778)
c3 = Customer.new("Justin",1267567899)

b1 = Bank.new("Chase")
b2 = Bank.new("BOFA")

acc1 = Account.new(c1,b1,100000)
acc2 = Account.new(c2,b1,300000)
acc3 = Account.new(c3,b2,200000)
acc4 = Account.new(c1,b2,200000)




binding.pry
0
require 'pry'

require_relative "user.rb"
require_relative "tweet.rb"

vidhi = User.new("Vidhi03")
pratikshya = User.new("Pratikshya19")


tweet1 = Tweet.new("HELLO", vidhi)
tweet2 = Tweet.new("Hi", pratikshya)
tweet3 = Tweet.new("I don't like milk", vidhi)




binding.pry
puts "one-to-many"
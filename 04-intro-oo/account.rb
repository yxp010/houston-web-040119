require 'pry'


class BankAccount
    attr_accessor :owner, :balance, :bank

    @@all = []


    def initialize(owner,balance,bank= "BOFA")
        @owner = owner
        @balance = balance
        @bank = bank

        @@all << self
    end

    def display_info
        puts "#{@owner} has #{@balance}"
    end

    def self.all
        @@all
    end




    # def owner=(owner)
    #     @owner = owner
    # end

    # def owner
    #     @owner
    # end

    # def balance=(balance)
    #     @balance = balance
    # end

    # def balance
    #     @balance
    # end



end

# bank_account = {"owner" => "Vidhi", "balance" => 10000}
# bank_account1 = {"owner" => "Sam", "balance" => 0}
# bank_account2 = {"owner" => "Nick", "balance" => 47.50}

binding.pry
 puts "Intro-OO"

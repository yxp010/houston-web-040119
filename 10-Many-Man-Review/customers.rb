class Customer
    attr_accessor :name, :acc_type
    @@all =[]

    def initialize(name,acc_type)
        @name = name
        @acc_type = acc_type
        @@all << self
    end 

    def self.all
        @@all
    end

    def accounts
        Account.all.select do |account|
            account.customer == self
        end
    end

    def banks
        accounts.map do |account|
            account.bank
        end
    end

    def balance
        total = 0
        accounts.each do |account|
            total += account.balance
        end
        total

        # accounts.map(&:balance).inject(:+)
    end



end

class Customer

    attr_accessor :name, :number
    @@all = []

    def initialize(name, number)
        @name = name
        @number = number
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
        self.accounts.map do |account|
            account.bank
        end
    end

    def balance
        total = 0
        self.accounts.each do |account|
            total += account.balance
            #total= total + account.balance
        end
        total
    end

end
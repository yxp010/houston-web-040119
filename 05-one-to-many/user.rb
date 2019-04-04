# require_relative "tweet.rb"

class User

    attr_reader :username

    @@all = []


    def initialize(username)
        @username = username

        @@all.push(self)
    end


    def tweet
       

        Tweet.all.select do |tweet|
            tweet.user == self
        end

    end

    def post_tweet(message)

        Tweet.new(message,self)


    end

    def self.all
        @@all
    end


end
class Book
    attr_accessor :title, :year, :id

    def initialize(title:, year:, id:)
        @title = title
        @year = year
        @id = id
    end

    def info
        "#{self.title} was published in (#{self.coolness})"
    end

end
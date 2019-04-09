class Author
    attr_accessor :first_name, :last_name, :id

    def initialize(first_name:, last_name:, id: nil)
        @first_name = first_name
        @last_name = last_name 
        @id = id
    end

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def self.create(first_name, last_name) 
     DB[:conn].execute('INSERT INTO authors (first_name, last_name) VALUES (?,?)',[first_name,last_name])
    end

    def self.all

     results = DB[:conn].execute('SELECT * FROM authors')

     results.map do |result|
        Author.new(first_name: result["first_name"], last_name: result["last_name"], id: result["id"] )
     end

    end

    def update(first_name, last_name)
        self.first_name = first_name
        self.last_name = last_name


        DB[:conn].execute('UPDATE authors SET first_name=?, last_name = ? WHERE id = ?',
        [
            first_name,
            last_name,
            self.id
        ])
    
    end

    def destroy
        DB[:conn].execute('DELETE FROM authors WHERE id = ?',
        [
            self.id
        ])
    
    end

    def books
        results = DB[:conn].execute('SELECT books.* FROM books
        JOIN books_authors ON books.id = books_authors.book_id
        WHERE books_authors.author_id = ?',[
            self.id
        ])
    end

    def self.find(id)
        result = DB[:conn].execute('SELECT * FROM authors WHERE id= ?', [
            id
        ])
    end



    # def author_books
    #     BookAuthor.all.select do | author_book |
    #         author_book.author_id == self.id
    #     end
    # end
    
    # def books
    #     self.author_books.map do | book |
    #         Book.find(book.book_id)
    #     end
    # end
end
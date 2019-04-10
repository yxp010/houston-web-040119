class BookAuthor

    attr_reader :book_id, :author_id, :id

    def initialize(book_id:, author_id:, id: nil)
        @book_id = book_id
        @author_id = author_id
        @id = id
    end

    def self.create(book_id, author_id) 
        DB[:conn].execute('INSERT INTO books_authors (book_id, author_id) VALUES (?,?)',[book_id, author_id])
    end
   
    def self.all
   
        results = DB[:conn].execute('SELECT * FROM books_authors')
   
        results.map do |result|
           Book.new(book_id: result["book_id"], author_id: result["author_id"], id: result["id"] )
        end
   
    end
 

end

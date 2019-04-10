class Book
    attr_accessor :title, :year, :id

    def initialize(title:, year:, id: nil)
        @title = title
        @year = year
        @id = id
    end

    def info
        "#{self.title} was published in (#{self.coolness})"
    end


    def self.create(title, year) 
        DB[:conn].execute('INSERT INTO books (title, year) VALUES (?,?)',[title,year])
    end
   
    def self.all
   
        results = DB[:conn].execute('SELECT * FROM books')
   
        results.map do |result|
           Book.new(title: result["title"], year: result["year"], id: result["id"] )
        end
   
    end
   
    def update(title, year)
           self.title = title
           self.year = year
   
   
           DB[:conn].execute('UPDATE books SET title=?, year = ? WHERE id = ?',
           [
               title,
               year,
               self.id
           ])
       
       end
   
       def destroy
           DB[:conn].execute('DELETE FROM books WHERE id = ?',
           [
               self.id
           ])
       
       end
   
       def authors
           results = DB[:conn].execute('SELECT authors.* FROM authors
           JOIN books_authors ON authors.id = books_authors.author_id
           WHERE books_authors.book_id = ?',[
               self.id
           ])
       end
   
       def self.find(id)
           result = DB[:conn].execute('SELECT * FROM books WHERE id= ?', [
               id
           ])
       end
   

end
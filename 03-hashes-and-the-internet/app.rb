
require "rest-client"
require "pry"
require "json"




def get_books_info(books)
    books.each do |book|
       book_print(book)
    end
end


def book_print(book)
    puts book["volumeInfo"]["title"]
    
    if book["volumeInfo"]["authors"]
    puts book["volumeInfo"]["authors"].join(" & ")
    end

    if book["volumeInfo"]["description"]
    puts book["volumeInfo"]["description"][0..140] + "..."
    end

    puts "*" * 30

end



def search_term
    gets.chomp
end

def user_input
    puts "What you want to search?"
    search = search_term
    puts "User Wrote: #{search}"
url = "https://www.googleapis.com/books/v1/volumes?q=#{search}"
response = RestClient.get(url)

info = JSON.parse(response)

books = info["items"]
get_books_info(books)
end

# get_books_info(books)
user_input

binding.pry
puts "Request Response"

require 'bundler'
Bundler.require

require_relative '../lib/books.rb'
require_relative '../lib/authors.rb'
require_relative '../lib/book_author.rb'


DB = {
  conn: SQLite3::Database.new('db/booksauthors.db')
}
# DB = SQLite3::Database.new('db/booksauthors.db')
DB[:conn].results_as_hash = true

binding.pry
0

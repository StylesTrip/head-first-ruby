require 'yaml/store'

store = YAML::Store.new('books.yml')

class Book
  attr_accessor :title, :pages
end

book = Book.new
book.title = "Head First Ruby"
book.pages = 450

store.transaction do
  store["HFRB"] = book
end

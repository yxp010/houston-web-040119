class ApplicationController < Sinatra::Base

    set :views, "app/views"
    set :method_override, true

    #home page
    get '/' do
        @hello = "040119"
        erb :home
    end


    # display books
    get '/books' do
        @books = Book.all
        erb :index
    end

    #new book form
    get '/books/new' do
        erb :new
    end

    #display a book info
    get '/books/:id' do
        @book = Book.find(params[:id])
        erb :'show'
    end

    #create a book
    post '/books' do
        # binding.pry
        Book.create(params)
        redirect '/books'
    end

    #edit a book form
    get '/books/:id/edit' do
        @book = Book.find(params[:id])
        erb :edit
    end

    #edit a book
    patch '/books/:id' do
        book = Book.find(params[:id])
        # binding.pry
        book.update(title: params[:title], snippet: params[:snippet])
        redirect "/books/#{params[:id]}"
    end

    #delete a book
    delete '/books/:id' do
        book = Book.find(params[:id])
        book.destroy 
        redirect "/books"
    end

end

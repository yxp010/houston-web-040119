class ApplicationController < Sinatra::Base

    set :views, "app/views"
    set :method_override, true

    get '/' do
        @hello = "040119"
        erb :home
    end


    # display books
    get '/books' do
        @books = Book.all
        erb :index
    end

    get '/books/new' do
        erb :new
    end

    get '/books/:id' do
        @book = Book.find(params[:id])
        erb :'show'
    end

    post '/books' do
        # binding.pry
        Book.create(params)
        redirect '/books'
    end

    get '/books/:id/edit' do
        @book = Book.find(params[:id])
        erb :edit
    end

    patch '/books/:id' do
        book = Book.find(params[:id])
        # binding.pry
        book.update(title: params[:title], snippet: params[:snippet])
        redirect "/books/#{params[:id]}"
    end

    delete '/books/:id' do
        book = Book.find(params[:id])
        book.destroy 
        redirect "/books"
    end

    


end

class RestfulControllerApp < Sinatra::Base

  get "/" do 
    erb "sanity check"
  end

  # INDEX
  # get all the books
  get "/books" do 
    # add code
    @books = ["To Kill a Mook","For Whom the Bell Tolls","Dune"]
    # erb "shows all books"
    erb :books
  end

  # NEW
  # serve the form page to enable updating the books
  get "/books/new" do
    # erb "Shows the 'new book' form"
    erb :new
  end 

  # SHOW
  # get one specific item
  get "/books/:id" do   # should be '/books/:id'
    # params[:id]  # would return 3 when using '/books/3'
    erb "Shows book " + params[:id]
  end

  # EDIT
  # Show the form to update a specific book
  get "/books/:id/edit" do # should be "/books/:id/edit"
    # params[:id]
    # erb "This is the form to edit Book 3"
    erb :edit
  end 

  # CREATE
  # The create action resulting from an edit sent from the EDIT form
  post "/books" do
    erb "book posted!"
  end

  # UPDATE
  # Fully update one book
  put "/books/:id" do
    # params[:id]
    erb "Put one book"
  end 

  # UPDATE
  # Partially update one book
  patch "/books/:id" do
    # params[:id]
  end 

  # DESTROY
  delete "/books/:id" do
    # params[:id]
    erb "Delete book " + params[:id]
  end 


end
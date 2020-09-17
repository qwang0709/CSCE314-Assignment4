class BooksController < ApplicationController

  def index
      @bks = Book.all    #query db ascending order
        flash[:notice] = "We have exactly #{@bks.size} books available."
  end

  def show
    @bks = Book.find(params[:id])
    flash[:notice] = "Alert message!"
  end

  def new
    @bks = Book.new
  end

  def create
    #new object for passing in
    @bks = Book.new(book_params)
    flash[:notice] = "Alert message!"
    #save the object
    if @bks.save
     redirect_to (books_path) #go back to index pager
    else

      #render('new') #render the tempalte for user to fix, not calling new again
      render ('new')
    end
  end

  def edit
    @bks = Book.find(params[:id])
  end

  def update
    @bks = Book.find(params[:id])
    if @bks.update(book_params)
      flash[:notice] = "Successfully Updated!"
      redirect_to(book_path(@bks))
    else
      render('edit')
    end

  end

  def delete
    @bks = Book.find(params[:id])

  end

  def destroy
    @bks = Book.find(params[:id])
    @bks.destroy
    redirect_to(books_path)
  end

  private
      def book_params
        params.require(:book).permit(:title,:author,:genre,:price,:published_date)
      end

end

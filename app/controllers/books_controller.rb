class BooksController < ApplicationController
  def index
    # 一覧表示
    @books = Book.all

    # 新規投稿機能
    @book = Book.new
  end


  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book.id)
    else
      flash.now[:alert] = "Book was unsuccessfully created."
      render :index
    end
  end

  def destroy
    book = book.find(params[:id])
    # list.destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end

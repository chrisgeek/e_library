class HomeController < ApplicationController
 
  before_action :authenticate_admin!

  def index
  end

  def search
    if params[:search].blank? 
      flash[:empty_search]= "can't be blank"
      render 'new'
    else
       @search_result = Book.where("reg_number LIKE '%#{params[:search]}%' or firstname LIKE '%#{params[:search]}%' 
        or lastname LIKE '%#{params[:search]}%' ").order("id DESC").page(params[:page]).per_page(10)
      
    end 
  end

  def view
    sleep 2
      @books = Book.all.order("id DESC").page(params[:page]).per_page(1)
  end

  def show
    @book= Book.all
    @books=Book.find(params[:id])
  end


  def new
    @book= Book.new
  end


  
  def create
    @book = Book.new(book_params)
      if @book.save
        respond_to do |format|
          format.js
        end

      else 
        respond_to do |format|
          format.js
        end
      end
  end

  def update
    @book=Book.find(params[:id])    
      if @book.update_attribute(:returned,true)
        redirect_to view_path
      end

    end

  private
  	def book_params
  		params.require(:book).permit(:firstname,:lastname,:phone,:reg_number,:gender,:category,:title,:author)
  	end
end

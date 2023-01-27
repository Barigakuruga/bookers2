class BooksController < ApplicationController
  def new
  end
  def show
  end

  def index
   @user = User.find(params[:id])
  end

  def edit
  end
end

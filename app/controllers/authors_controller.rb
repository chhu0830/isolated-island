class AuthorsController < ApplicationController
  before_action :author_params, :only => [:create]

  def new
  end

  def create
    @author = Author.new(author_params)
    @author.save

    redirect_to zine_index_path
  end

  private
  
  def author_params
    params.permit(:name, :description, :image)
  end

end

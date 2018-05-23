class HomeController < ApplicationController
  def main
  end

  def gita
    @posts = Post.all
  end
  
  def write
  end

  def create
    @post = Post.new
    @post.db_title = params[:title]
    @post.db_content = params[:content]
    
    @post.save
    
    redirect_to '/gita'
  end

  def read
  end
end

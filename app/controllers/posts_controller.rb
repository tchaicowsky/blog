class PostsController < ApplicationController
  #seven restful actions
  #index = the default that happens when people go to posts
  def index #just by defining, now something will appear.
    @posts = Post.all #make instance var to send it to view
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def new #want to create a form
    @post = Post.new #a new empty Post object
  end
  
  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to posts_path, :notice => "Your post was saved"
    else
      render "new"
    end
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to posts_path, :notice => "Your post was updated"
    else
      render "edit"
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, :notice => "Your post was deleted"
  end
  
end

class PostsController < ApplicationController
  include PostsHelper
  
  def index
    if params[:tags]
      @posts = []
      Post.all.each do |post|
        @posts << post if post.tags.pluck(:tag).include?(params[:tags])
      end
    else
      @posts = Post.all
    end
  end

  def show
    @post = Post.where(slug: params[:post_slug]).first
  end
end

class ForumController < ApplicationController
  def index
    @posts = Post.all
  end
end

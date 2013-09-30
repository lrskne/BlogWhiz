class HomeController < ApplicationController
  def index
    @post = Post.last
    @users = User.all
  end
end

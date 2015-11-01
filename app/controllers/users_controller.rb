class UsersController < ApplicationController
  def index
    @num_weeks = 12
    @users = User.all
  end
end
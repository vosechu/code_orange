class UsersController < ApplicationController
  def index
    @num_weeks = 12
    @users = User.for_storyline
    @users << holder_of_unowned_subtasks
  end

  private

  def holder_of_unowned_subtasks
    FakeUser.new("???", Subtask.where(:dev_owner_id => nil).all)
  end
end
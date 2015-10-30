class IssuesController < ApplicationController
  def index
    @num_weeks = 12
    @issues = Issue.all
  end
end

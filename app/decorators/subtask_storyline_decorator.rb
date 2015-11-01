require 'decorator'

class SubtaskStorylineDecorator < Decorator
  component_name :subtask

  def dev_offset
    (subtask.dev_start_at.to_date - monday).to_i
  end

  def dev_width
    (subtask.dev_complete_at.to_date - subtask.dev_start_at.to_date + 1).to_i
  end

  def review_offset
    (subtask.review_start_at.to_date - monday).to_i
  end

  def review_width
    (subtask.review_complete_at.to_date - subtask.review_start_at.to_date + 1).to_i
  end

  def rc_offset
    (subtask.rc_start_at.to_date - monday).to_i
  end

  def rc_width
    (subtask.rc_complete_at.to_date - subtask.rc_start_at.to_date + 1).to_i
  end

  private

  def monday
    Date.today.beginning_of_week.to_date
  end
end
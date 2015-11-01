# == Schema Information
#
# Table name: issues
#
#  id                     :integer          not null, primary key
#  jira_id                :string
#  nickname               :string
#  communicated_deploy_at :datetime
#  deploy_at              :datetime
#  completed_at           :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class Issue < ActiveRecord::Base
  has_many :subtasks

  default_scope -> { order(:order) }
  scope :for_storyline, -> { includes(:subtasks => [:dev_owner, :cr_owner]) }

  def sections_for_date(date)
    Date.parse(date) if date.is_a? String

    # subtasks.select { |subtask| subtask.present_on_date?(date) }.map(&:name).join(' ')
    'dev'
  end

  def assignees
    subtasks.map(&:users).flatten.compact.uniq.sort
  end
end

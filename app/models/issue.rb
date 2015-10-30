# == Schema Information
#
# Table name: issues
#
#  id                     :integer          not null, primary key
#  jira_id                :string
#  name                   :string
#  communicated_deploy_at :datetime
#  deploy_at              :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class Issue < ActiveRecord::Base
  has_many :sections

  def sections_for_date(date)
    sections.select { |section| section.present_on_date?(date) }.map(&:name).join(' ')
  end

  def assignees
    users = sections.map do |section|
      section.assignments.map do |assignment|
        assignment.user
      end
    end
    users.flatten.uniq.sort
  end
end

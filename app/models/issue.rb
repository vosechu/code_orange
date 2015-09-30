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
end

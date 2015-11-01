# == Schema Information
#
# Table name: subtasks
#
#  id                 :integer          not null, primary key
#  issue_id           :integer
#  name               :string
#  dev_start_at       :datetime
#  dev_complete_at    :datetime
#  review_start_at    :datetime
#  review_complete_at :datetime
#  rc_start_at        :datetime
#  rc_complete_at     :datetime
#  dev_owner_id       :integer
#  qa_owner_id        :integer
#  cr_owner_id        :integer
#  po_owner_id        :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Subtask < ActiveRecord::Base
  belongs_to :issue
  belongs_to :dev_owner, class_name: "User"
  belongs_to :cr_owner, class_name: "User"
  belongs_to :qa_owner, class_name: "User"
  belongs_to :po_owner, class_name: "User"

  def users
    [dev_owner, cr_owner, qa_owner, po_owner]
  end
end

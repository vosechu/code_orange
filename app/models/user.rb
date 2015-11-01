# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  has_many :issues, :through => :subtasks
  has_many :dev_subtasks, foreign_key: "dev_owner_id", class_name: "Subtask"
  has_many :cr_subtasks, foreign_key: "cr_owner_id", class_name: "Subtask"
  has_many :po_subtasks, foreign_key: "po_owner_id", class_name: "Subtask"
  has_many :qa_subtasks, foreign_key: "qa_owner_id", class_name: "Subtask"

  default_scope -> { order(:order) }
  scope :for_storyline, -> { include_devs.include_crs.with_subtasks }
  scope :with_subtasks, -> { all.reject { |user| user.subtasks.count == 0 } }
  scope :include_devs, -> { includes(:dev_subtasks => :issue) }
  scope :include_crs, -> { includes(:cr_subtasks => :issue) }

  def subtasks
    [dev_subtasks, cr_subtasks].flatten.compact.uniq.sort
  end
end

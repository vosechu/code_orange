# == Schema Information
#
# Table name: sections
#
#  id                :integer          not null, primary key
#  issue_id          :integer
#  name              :string
#  start_at          :datetime
#  end_at            :datetime
#  original_start_at :datetime
#  original_end_at   :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Section < ActiveRecord::Base
  belongs_to :issue

  has_many :assignments
  has_many :users, :through => :assignments

  def present_on_date?(date)
    date.between?(start_at, end_at)
  end
end

class AddOrderToUserAndIssue < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.integer :order, :default => 0, :null => false
    end

    change_table :issues do |t|
      t.integer :order, :default => 0, :null => false
    end
  end
end

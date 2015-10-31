class CreateSubtasks < ActiveRecord::Migration
  def change
    create_table :subtasks do |t|
      t.references :issue, index: true, foreign_key: true
      t.string :name

      t.datetime :dev_start_at
      t.datetime :dev_complete_at
      t.datetime :review_start_at
      t.datetime :review_complete_at
      t.datetime :rc_start_at
      t.datetime :rc_complete_at

      t.references :dev_owner, index: true
      t.references :qa_owner, index: true
      t.references :cr_owner, index: true
      t.references :po_owner, index: true

      t.timestamps null: false
    end
  end
end

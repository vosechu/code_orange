class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.references :issue, index: true, foreign_key: true
      t.string :name
      t.datetime :start_at
      t.datetime :end_at
      t.datetime :original_start_at
      t.datetime :original_end_at

      t.timestamps null: false
    end
  end
end

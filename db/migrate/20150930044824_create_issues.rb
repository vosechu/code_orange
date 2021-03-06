class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :jira_id
      t.string :nickname
      t.datetime :communicated_deploy_at
      t.datetime :deploy_at
      t.datetime :completed_at

      t.timestamps null: false
    end
  end
end

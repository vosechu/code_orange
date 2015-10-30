# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

['Chuck', 'Chappy', 'Dawniris', 'Ryan', 'Daniel'].each do |name|
  User.create(name: name)
end

i1 = Issue.create(jira_id: 7402, name: 'Some task', deploy_at: Time.zone.now)
i2 = Issue.create(jira_id: 7116, name: 'Some task', deploy_at: Time.zone.now)

s1 = i1.sections.create(name: 'dev', start_at: 3.days.ago, end_at: Time.zone.now)
s2 = i1.sections.create(name: 'review', start_at: 1.days.ago, end_at: Time.zone.now)
s3 = i1.sections.create(name: 'rc', start_at: 8.days.ago, end_at: 3.days.ago)

s1.assignments.create(user: User.where(name: 'Dawniris').first)
s2.assignments.create(user: User.where(name: 'Ryan').first)
s3.assignments.create(user: User.where(name: 'Chappy').first)
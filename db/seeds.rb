# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

%w(Allyn Andrew Ashim Barb Begin Ben CG Chappy Chuck Chris Colin Daniel
   Darrell Davis Dawniris Devin Dustin Groth Hunter Jor Josie Kiisu
   Krishan Krishna Madhu Manju Marc Michael Murthy Nag Nate Nischal
   Raghu Ravi Ryan Scott Siva Tabitha Todd Vinch Will).each do |name|
  User.create(name: name)
end

# i1 = Issue.create(jira_id: 7402, name: 'Some task', deploy_at: Time.zone.now)
# i2 = Issue.create(jira_id: 7116, name: 'Some task', deploy_at: Time.zone.now)

# s1 = i1.sections.create(name: 'dev', start_at: 3.days.ago, end_at: Time.zone.now)
# s2 = i1.sections.create(name: 'review', start_at: 1.days.ago, end_at: Time.zone.now)
# s3 = i1.sections.create(name: 'rc', start_at: 8.days.ago, end_at: 3.days.ago)

# s1.assignments.create(user: User.where(name: 'Dawniris').first)
# s2.assignments.create(user: User.where(name: 'Ryan').first)
# s3.assignments.create(user: User.where(name: 'Chappy').first)

Issue.create(jira_id: 7293, nickname: "Second look", deploy_at: Date.parse("2015-12-09")) do |issue|
  issue.subtasks.new(name: "Champ",
    dev_start_at: Date.parse("2015-11-02"),
    dev_complete_at: Date.parse("2015-11-25"),
    review_start_at: Date.parse("2015-11-30"),
    review_complete_at: Date.parse("2015-12-04"),
    rc_start_at: Date.parse("2015-12-07"),
    rc_complete_at: Date.parse("2015-12-09"),
    dev_owner: User.where(name: "Scott").first,
    qa_owner: User.where(name: "Vinch").first,
    po_owner: User.where(name: "Daniel").first
  )
  issue.save
end
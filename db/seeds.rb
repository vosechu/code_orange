# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

%w(Allyn Andrew Ashim Barb Begin Ben CG Chappy Chuck Chris Colin Daniel
   Darrell Davis Dawniris Devin Dustin Groth Hunter Irish Jor Josie Kiisu
   Krishan Krishna Madhu Manju Marc Michael Murthy Nag Nate Nischal
   Raghu Ravi Ryan Scott Schwalbe Siva Tabitha Todd Vinch Will).each do |name|
  User.create(name: name)
end

User.where(name: 'Madhu' ).first.update(:order => 1)
User.where(name: 'Jor'   ).first.update(:order => 1)
User.where(name: 'Scott' ).first.update(:order => 1)
User.where(name: 'Manju' ).first.update(:order => 1)
User.where(name: 'Chappy').first.update(:order => 1)
User.where(name: 'Todd'  ).first.update(:order => 2)
User.where(name: 'Josie' ).first.update(:order => 2)
User.where(name: 'Ben'   ).first.update(:order => 3)

Issue.create(jira_id: 7293, nickname: "Second look", deploy_at: Date.parse("2015-12-09"), order: 1) do |issue|
  issue.subtasks.new(name: "Champ",
    dev_start_at: Date.parse("2015-11-02"),
    dev_complete_at: Date.parse("2015-11-25"),
    review_start_at: Date.parse("2015-11-30"),
    review_complete_at: Date.parse("2015-12-04"),
    rc_start_at: Date.parse("2015-12-07"),
    rc_complete_at: Date.parse("2015-12-09"),
    dev_owner: User.where(name: "Scott").first,
    cr_owner: User.where(name: "Manju").first,
    qa_owner: User.where(name: "Vinch").first,
    po_owner: User.where(name: "Daniel").first
  )
  issue.subtasks.new(name: "Nemo",
    dev_start_at: Date.parse("2015-11-05"),
    dev_complete_at: Date.parse("2015-11-18"),
    review_start_at: Date.parse("2015-11-19"),
    review_complete_at: Date.parse("2015-11-25"),
    rc_start_at: Date.parse("2015-12-07"),
    rc_complete_at: Date.parse("2015-12-09"),
    dev_owner: User.where(name: "Begin").first,
    cr_owner: User.where(name: "Marc").first,
    qa_owner: User.where(name: "Vinch").first,
    po_owner: User.where(name: "Daniel").first
  )
  issue.subtasks.new(name: "Nightingale",
    dev_start_at: Date.parse("2015-11-05"),
    dev_complete_at: Date.parse("2015-11-18"),
    review_start_at: Date.parse("2015-11-19"),
    review_complete_at: Date.parse("2015-11-25"),
    rc_start_at: Date.parse("2015-12-07"),
    rc_complete_at: Date.parse("2015-12-09"),
    dev_owner: User.where(name: "Begin").first,
    cr_owner: User.where(name: "Marc").first,
    qa_owner: User.where(name: "Vinch").first,
    po_owner: User.where(name: "Irish").first
  )
  issue.subtasks.new(name: "Panda",
    dev_start_at: Date.parse("2015-11-02"),
    dev_complete_at: Date.parse("2015-11-15"),
    review_start_at: Date.parse("2015-11-09"),
    review_complete_at: Date.parse("2015-11-20"),
    rc_start_at: Date.parse("2015-12-07"),
    rc_complete_at: Date.parse("2015-12-09"),
    dev_owner: User.where(name: "Nate").first,
    cr_owner: User.where(name: "Marc").first,
    qa_owner: User.where(name: "Vinch").first,
    po_owner: User.where(name: "Irish").first
  )
  issue.save
end

Issue.create(jira_id: 7287, nickname: "Dual eligibility", deploy_at: Date.parse("2015-12-09"), order: 2) do |issue|
  issue.subtasks.new(name: "Champ",
    dev_start_at: Date.parse("2015-11-09"),
    dev_complete_at: Date.parse("2015-11-25"),
    review_start_at: Date.parse("2015-11-23"),
    review_complete_at: Date.parse("2015-12-02"),
    rc_start_at: Date.parse("2015-12-07"),
    rc_complete_at: Date.parse("2015-12-09"),
    dev_owner: User.where(name: "Jor").first,
    cr_owner: User.where(name: "Chappy").first,
    qa_owner: User.where(name: "Vinch").first,
    po_owner: User.where(name: "Daniel").first
  )
  issue.subtasks.new(name: "Nemo",
    dev_start_at: Date.parse("2015-11-19"),
    dev_complete_at: Date.parse("2015-11-25"),
    review_start_at: Date.parse("2015-11-30"),
    review_complete_at: Date.parse("2015-12-04"),
    rc_start_at: Date.parse("2015-12-07"),
    rc_complete_at: Date.parse("2015-12-09"),
    dev_owner: User.where(name: "Ben").first,
    cr_owner: User.where(name: "Begin").first,
    qa_owner: User.where(name: "Vinch").first,
    po_owner: User.where(name: "Daniel").first
  )
  issue.subtasks.new(name: "Lenny",
    dev_start_at: Date.parse("2015-11-19"),
    dev_complete_at: Date.parse("2015-12-06"),
    review_start_at: Date.parse("2015-12-04"),
    review_complete_at: Date.parse("2015-12-11"),
    rc_start_at: Date.parse("2015-12-07"),
    rc_complete_at: Date.parse("2015-12-09"),
    dev_owner: User.where(name: "Josie").first,
    cr_owner: User.where(name: "Marc").first,
    qa_owner: User.where(name: "Vinch").first,
    po_owner: User.where(name: "Daniel").first
  )
end

Issue.create(jira_id: 7599, nickname: "Update for cal1st", deploy_at: Date.parse("2015-12-09"), order: 3) do |issue|
  issue.subtasks.new(name: "Champ",
    dev_start_at: Date.parse("2015-11-02"),
    dev_complete_at: Date.parse("2015-11-25"),
    review_start_at: Date.parse("2015-11-30"),
    review_complete_at: Date.parse("2015-12-04"),
    rc_start_at: Date.parse("2015-12-07"),
    rc_complete_at: Date.parse("2015-12-09"),
    dev_owner: User.where(name: "Manju").first,
    cr_owner: User.where(name: "Scott").first,
    qa_owner: User.where(name: "Vinch").first,
    po_owner: User.where(name: "Daniel").first
  )
  issue.subtasks.new(name: "Nemo",
    dev_start_at: Date.parse("2015-11-30"),
    dev_complete_at: Date.parse("2015-11-30"),
    review_start_at: Date.parse("2015-12-01"),
    review_complete_at: Date.parse("2015-12-01"),
    rc_start_at: Date.parse("2015-12-07"),
    rc_complete_at: Date.parse("2015-12-09"),
    dev_owner: User.where(name: "Begin").first,
    cr_owner: User.where(name: "Ben").first,
    qa_owner: User.where(name: "Vinch").first,
    po_owner: User.where(name: "Daniel").first
  )
  issue.subtasks.new(name: "Panda",
    dev_start_at: Date.parse("2015-11-16"),
    dev_complete_at: Date.parse("2015-12-02"),
    review_start_at: Date.parse("2015-12-03"),
    review_complete_at: Date.parse("2015-12-09"),
    rc_start_at: Date.parse("2015-12-07"),
    rc_complete_at: Date.parse("2015-12-09"),
    dev_owner: User.where(name: "Nate").first,
    cr_owner: User.where(name: "Ben").first,
    qa_owner: User.where(name: "Vinch").first,
    po_owner: User.where(name: "Daniel").first
  )
end

Issue.create(jira_id: 7594, nickname: "Confidence score", deploy_at: Date.parse("2015-12-09"), order: 4) do |issue|
  issue.subtasks.new(name: "Champ",
    dev_start_at: Date.parse("2015-11-02"),
    dev_complete_at: Date.parse("2015-11-13"),
    review_start_at: Date.parse("2015-11-16"),
    review_complete_at: Date.parse("2015-11-20"),
    rc_start_at: Date.parse("2015-12-07"),
    rc_complete_at: Date.parse("2015-12-09"),
    dev_owner: User.where(name: "Schwalbe").first,
    cr_owner: User.where(name: "Chappy").first,
    qa_owner: User.where(name: "Vinch").first,
    po_owner: User.where(name: "Daniel").first
  )
  issue.subtasks.new(name: "Nemo",
    dev_start_at: Date.parse("2015-11-23"),
    dev_complete_at: Date.parse("2015-12-02"),
    review_start_at: Date.parse("2015-12-03"),
    review_complete_at: Date.parse("2015-12-04"),
    rc_start_at: Date.parse("2015-12-07"),
    rc_complete_at: Date.parse("2015-12-09"),
    dev_owner: User.where(name: "Nag").first,
    cr_owner: User.where(name: "Begin").first,
    qa_owner: User.where(name: "Vinch").first,
    po_owner: User.where(name: "Daniel").first
  )
  issue.subtasks.new(name: "Lenny",
    dev_start_at: Date.parse("2015-11-05"),
    dev_complete_at: Date.parse("2015-11-12"),
    review_start_at: Date.parse("2015-11-13"),
    review_complete_at: Date.parse("2015-11-19"),
    rc_start_at: Date.parse("2015-12-07"),
    rc_complete_at: Date.parse("2015-12-09"),
    dev_owner: User.where(name: "Marc").first,
    cr_owner: User.where(name: "Josie").first,
    qa_owner: User.where(name: "Vinch").first,
    po_owner: User.where(name: "Daniel").first
  )
end

Issue.create(jira_id: 7611, nickname: "Transunion", deploy_at: Date.parse("2015-12-09"), order: 5) do |issue|
  issue.subtasks.new(name: "Mandolin",
    dev_start_at: Date.parse("2015-11-05"),
    dev_complete_at: Date.parse("2015-11-25"),
    review_start_at: Date.parse("2015-11-30"),
    review_complete_at: Date.parse("2015-12-04"),
    rc_start_at: Date.parse("2015-12-07"),
    rc_complete_at: Date.parse("2015-12-09"),
    dev_owner: User.where(name: "Dustin").first,
    cr_owner: User.where(name: "Marc").first,
    qa_owner: User.where(name: "Vinch").first,
    po_owner: User.where(name: "Daniel").first
  )
  issue.subtasks.new(name: "Lenny",
    dev_start_at: Date.parse("2015-11-30"),
    dev_complete_at: Date.parse("2015-12-02"),
    review_start_at: Date.parse("2015-12-03"),
    review_complete_at: Date.parse("2015-12-04"),
    rc_start_at: Date.parse("2015-12-07"),
    rc_complete_at: Date.parse("2015-12-09"),
    dev_owner: User.where(name: "Dustin").first,
    cr_owner: User.where(name: "Marc").first,
    qa_owner: User.where(name: "Vinch").first,
    po_owner: User.where(name: "Daniel").first
  )
end

Issue.create(jira_id: 7341, nickname: "Payment info", deploy_at: Date.parse("2015-12-09"), order: 6) do |issue|
  issue.subtasks.new(name: "Holmes/Nemo",
    dev_start_at: Date.parse("2015-11-02"),
    dev_complete_at: Date.parse("2015-11-13"),
    review_start_at: Date.parse("2015-11-16"),
    review_complete_at: Date.parse("2015-11-20"),
    rc_start_at: Date.parse("2015-12-07"),
    rc_complete_at: Date.parse("2015-12-09"),
    dev_owner: User.where(name: "Nag").first,
    cr_owner: User.where(name: "Marc").first,
    qa_owner: User.where(name: "Vinch").first,
    po_owner: User.where(name: "Daniel").first
  )
end

Issue.create(jira_id: 7280, nickname: "Calc payment", deploy_at: Date.parse("2015-12-09"), order: 7) do |issue|
  issue.subtasks.new(name: "Champ 7280",
    dev_start_at: Date.parse("2015-11-02"),
    dev_complete_at: Date.parse("2015-11-18"),
    review_start_at: Date.parse("2015-11-19"),
    review_complete_at: Date.parse("2015-11-25"),
    rc_start_at: Date.parse("2015-12-07"),
    rc_complete_at: Date.parse("2015-12-09"),
    dev_owner: User.where(name: "Madhu").first,
    cr_owner: User.where(name: "Chappy").first,
    qa_owner: User.where(name: "Vinch").first,
    po_owner: User.where(name: "Daniel").first
  )
  issue.subtasks.new(name: "Champ 7288",
    dev_start_at: Date.parse("2015-11-30"),
    dev_complete_at: Date.parse("2015-12-23"),
    review_start_at: Date.parse("2015-12-28"),
    review_complete_at: Date.parse("2016-01-04"),
    rc_start_at: Date.parse("2015-12-07"),
    rc_complete_at: Date.parse("2015-12-09"),
    dev_owner: User.where(name: "Madhu").first,
    qa_owner: User.where(name: "Vinch").first,
    po_owner: User.where(name: "Daniel").first
  )
end

Issue.create(nickname: "Ngale opti", deploy_at: Date.parse("2015-12-09"), order: 8) do |issue|
  issue.subtasks.new(name: "Ngale opti",
    dev_start_at: Date.parse("2015-11-23"),
    dev_complete_at: Date.parse("2015-12-02"),
    review_start_at: Date.parse("2015-12-03"),
    review_complete_at: Date.parse("2015-12-04"),
    rc_start_at: Date.parse("2015-12-07"),
    rc_complete_at: Date.parse("2015-12-09"),
    dev_owner: User.where(name: "Begin").first,
    cr_owner: User.where(name: "Marc").first,
    qa_owner: User.where(name: "Vinch").first,
    po_owner: User.where(name: "Daniel").first
  )
end

Issue.create(jira_id: 7818, nickname: "COC in champ", deploy_at: Date.parse("2015-11-18"), order: 8) do |issue|
  issue.subtasks.new(name: "Champ",
    dev_start_at: Date.parse("2015-11-02"),
    dev_complete_at: Date.parse("2015-11-13"),
    review_start_at: Date.parse("2015-11-09"),
    review_complete_at: Date.parse("2015-11-13"),
    rc_start_at: Date.parse("2015-11-16"),
    rc_complete_at: Date.parse("2015-11-18"),
    dev_owner: User.where(name: "Chappy").first,
    cr_owner: User.where(name: "Ben").first,
    qa_owner: User.where(name: "Vinch").first,
    po_owner: User.where(name: "Daniel").first
  )
  issue.subtasks.new(name: "Nemo/Panda",
    dev_start_at: Date.parse("2015-10-21"),
    dev_complete_at: Date.parse("2015-10-30"),
    review_start_at: Date.parse("2015-11-02"),
    review_complete_at: Date.parse("2015-11-06"),
    rc_start_at: Date.parse("2015-11-16"),
    rc_complete_at: Date.parse("2015-11-18"),
    dev_owner: User.where(name: "Ben").first,
    qa_owner: User.where(name: "Vinch").first,
    po_owner: User.where(name: "Daniel").first
  )
end

Issue.create(jira_id: 7229, nickname: "Docs out of db", deploy_at: Date.parse("2015-11-18"), order: 8) do |issue|
  issue.subtasks.new(name: "Panda",
    dev_start_at: Date.parse("2015-10-19"),
    dev_complete_at: Date.parse("2015-11-06"),
    review_start_at: Date.parse("2015-11-09"),
    review_complete_at: Date.parse("2015-11-13"),
    rc_start_at: Date.parse("2015-11-16"),
    rc_complete_at: Date.parse("2015-11-18"),
    dev_owner: User.where(name: "Josie").first,
    cr_owner: User.where(name: "Todd").first,
    qa_owner: User.where(name: "Vinch").first,
    po_owner: User.where(name: "Daniel").first
  )
  issue.subtasks.new(name: "Piranha",
    dev_start_at: Date.parse("2015-10-19"),
    dev_complete_at: Date.parse("2015-11-06"),
    review_start_at: Date.parse("2015-11-09"),
    review_complete_at: Date.parse("2015-11-13"),
    rc_start_at: Date.parse("2015-11-16"),
    rc_complete_at: Date.parse("2015-11-18"),
    dev_owner: User.where(name: "Todd").first,
    cr_owner: User.where(name: "Josie").first,
    qa_owner: User.where(name: "Vinch").first,
    po_owner: User.where(name: "Daniel").first
  )
end
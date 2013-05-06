#Related steps that should really be in other step files
#that need to exist for the admin scenarios.
Given /^I am logged in as an administrator$/ do
  # I'll decomment this line on merging back to master.
  #pending "Pending user login system and administrators"
end

Given /^there is a user named "(.*)"$/ do |user_name|
  User.create!({:name => user_name, :email => "test.email.com"})
end

Given /^the following users exist:$/ do |users_table|
  users_table.hashes.each do |user|
    User.create!(user)
  end
end

Given /^there is a video titled "(.*)"$/ do |video_title|
  #pending "Pending user video system"
end

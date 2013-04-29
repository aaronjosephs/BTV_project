#Related steps that should really be in other step files
#that need to exist for the admin scenarios but require
#functionality that doesn't quite exist yet.
Given /^I am logged in as an administrator$/ do
  # I'll decomment this line on merging back to master.
  #pending "Pending user login system and administrators"
end

Given /^there is a user named "(.*)"$/ do |user_name|
  User.create(:name => "($1)")
  #pending "Pending user login system"
end

Given /^there is a video titled "(.*)"$/ do |video_title|
  #pending "Pending user video system"
end

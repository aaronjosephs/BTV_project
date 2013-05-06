#Related steps that should really be in other step files
#that need to exist for the admin scenarios.
Given /^I am logged in as an administrator$/ do
  # I'll decomment this line on merging back to master.
  #pending "Pending user login system and administrators"
end

Given /^there is a user named "(.*)"$/ do |user_name|
  User.create!({:name => user_name, :email => "test.email.com"})
end

Given /^"(.*)" is an admin with the following:$/ do |user_name, table|
  @user = User.find_by_name(user_name)
  if @user.user_roles.empty?
    @role = @user.user_roles.build
    @role.role = "board"
    @role.save!
  end
  @board_info = BoardInfo.find_or_create(@user)
  @board_info.attributes = table.hashes[0]
  @board_info.save!
end

Given /^the following users exist:$/ do |users_table|
  users_table.hashes.each do |user|
    User.create!(user)
  end
end

Given /^there is a video titled "(.*)"$/ do |video_title|
  #pending "Pending user video system"
end

When /^I click on Board Member$/ do
  visit "http://about.me"
end

When /^I click on Production Board/ do
	visit "/board?production=yes"
end

Then /^I should visit Production Board$/ do
  visit "/board", :production => "yes"
end




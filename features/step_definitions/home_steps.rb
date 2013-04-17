When /^the navigation bar is prepared to respond$/ do
  page.execute_script(%Q{$(
end

When /^I click the logo$/ do
  click_on("BTV_logo")
end

When /^I should (not |)see the hamburger button$/ do |should_not|
  visible = page.execute_script(%Q{document.getElementById("ham_btn").visible();})
  if not ((should_not != 'not') == (visible))
    throw "Hamburger button has wrong visibility"
  end
end

When /^I click the hamburger button$/ do
  page.execute_script(%Q{document.getElementById("ham_btn").click();})
end

Given /^the window is (.*) pixels wide$/ do |pixel_string|
  page.execute_script(%Q{window.resizeTo(window.height, #{pixel_string});})
end

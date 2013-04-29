When /^the navigation bar is prepared to respond$/ do
  page.execute_script(%Q{
    var navbar = $("navbar");
    navbar.visibility = 0;
    navbar.on("hidden", function() {navbar.visibility = 1});
    navbar.on("shown", function() {navbar.visibility = 0});
  })
end

When /^I click the logo$/ do
  click_on("BTV_logo")
end

When /^I should (not |)see the navigation bar$/ do |should_not|
  visible = (page.execute_script(%Q{$("navbar").visibility;}) == 1)
  if not ((should_not == 'not') == (visible))
    throw "Navigation bar has wrong visibility"
  end
end

When /^I should (not |)see the hamburger button$/ do |should_not|
  visible = (page.execute_script(%Q{$("ham_btn").width();}) > 0)
  if not ((should_not == 'not') == (visible))
    throw "Hamburger button has wrong visibility"
  end
end

When /^I click the hamburger button$/ do
  page.execute_script(%Q{document.getElementById("ham_btn").click();})
end

Given /^the window is (.*) pixels wide$/ do |pixel_string|
  page.execute_script(%Q{window.resizeTo(window.height, #{pixel_string});})
end

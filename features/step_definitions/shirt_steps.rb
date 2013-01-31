def shirts
  @shirts ||= []
end

def create_shirts(number)
  shirts
  @shirts = FactoryGirl.create_list(:shirt, number)
end

Given /^(a|\d+) shirts?$/ do |amount|
  create_shirts parse_count(amount)
end

When /^I select a fabric$/ do
  visit('/')
  click_link('Shirts')
  first('.shirt').find(".name").find("a").click
end

When /^I choose a collar$/ do
  click_link('Customize Now')
end

When /^I choose cuffs$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I create a monogram$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I checkout$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see a purchase confirmation$/ do
  pending # express the regexp above with the code you wish you had
end

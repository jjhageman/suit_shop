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
  click_link('Cutaway')
  click_link('Next')
end

When /^I choose cuffs$/ do
  click_link('Two Button Barrel')
  click('Next')
end

When /^I create a monogram$/ do
  fill_in('Text', with: 'JJH')
  choose('Cuff')
  click_link('.standard')
  click_link('.silver')
end

When /^I enter my measurements$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I enter my body shape$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I checkout$/ do
  click_link('Checkout')
end

Then /^I should see a purchase confirmation$/ do
  pending # express the regexp above with the code you wish you had
end

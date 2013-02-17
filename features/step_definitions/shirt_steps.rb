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
  find(:xpath, '//li[@data-item="cutaway"]').click
  find("#slider-next").click
end

When /^I choose cuffs$/ do
  find(:xpath, '//li[@data-item="cutaway"]').click
  find("#slider-next").click
end

When /^I create a monogram$/ do
  fill_in('Shirt_Monogram_Line_1', with: 'JJH')
  choose('Cuff')
  find(:xpath, '//li[@option_value="Standard"]').click
  find(:xpath, '//li[@option_value="Blue"]').click
  find("#slider-next").click
end

When /^I enter my measurements$/ do
  select('5', from: 'height_feet')
  select('10', from: 'height_inches')
  fill_in('weight', with: '175')
  fill_in('age', with: '34')
  find("#slider-next").click
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

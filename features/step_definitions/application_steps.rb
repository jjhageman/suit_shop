Given /^show me the page$/ do
  save_and_open_page
end

Then /^wait for keypress$/ do
  STDIN.getc 
end

def parse_count(amount)
  case amount
  when "no"
    0
  when "an", "a"
    1
  else
    amount.to_i
  end
end

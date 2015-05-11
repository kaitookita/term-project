# features/step_definitions/courses_steps.rb

Given /^the following course exist/ do |course_table|
  course_table.hashes.each do |c|
    Course.create(c)
  end
end

When /^(?:|I )follow "([^"]*)" to delete$/ do |link|
  click_link(link)
end

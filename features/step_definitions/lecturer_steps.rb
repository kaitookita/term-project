# features/step_definitions/lecturer_steps.rb

Given /^the following lecturer exist/ do |lecturer_table|
  lecturer_table.hashes.each do |lect|
    Lecturer.create(lect)
  end
end
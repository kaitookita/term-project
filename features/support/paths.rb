# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
 
  def path_to(page_name)
    case page_name

    when /^the Course Management home page$/
      root_path
    when /^the home\s?page$/ 
      root_path
    when /^the course index page$/
      courses_path
    when /^the lecturer index page$/
      lecturers_path
    when /^the details course page for "(.*)"$/
      course_path(Course.find_by_course($1).id)
    when /^the details lecturer page for "(.*)"$/
      lecturer_path(Lecturer.find_by_identificationnumber($1).id)
    when /^the add lecturer page for "(.*)"$/
      new_lecturer_path
    when /^the add course page for "(.*)"$/
      new_course_path
    when /^the edit lecturer page for "(.*)"$/
      edit_lecturer_path(Lecturer.find_by_identificationnumber($1).id)
    when /^the edit course page for "(.*)"$/
      edit_course_path(Course.find_by_course($1).id)
    
    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)

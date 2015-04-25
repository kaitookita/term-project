json.array!(@courses) do |course|
  json.extract! course, :id, :course, :coursename, :lecturer, :semester, :year, :room, :examdate, :moreinfo
  json.url course_url(course, format: :json)
end

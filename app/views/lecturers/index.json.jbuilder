json.array!(@lecturers) do |lecturer|
  json.extract! lecturer, :id, :identificationnumber, :name, :faculty, :department, :moreinfo
  json.url lecturer_url(lecturer, format: :json)
end

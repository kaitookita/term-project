class Course < ActiveRecord::Base
    validates :course, :coursename, :lecturer, :semester, :year, presence: true
    validates :course, uniqueness: true
end

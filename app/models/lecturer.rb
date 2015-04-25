class Lecturer < ActiveRecord::Base
    validates :identificationnumber, :name, presence: true
    validates :identificationnumber, uniqueness: true
end

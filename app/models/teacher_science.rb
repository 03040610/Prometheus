class TeacherScience < ApplicationRecord
  belongs_to :teacher
  belongs_to :science
end
class TeacherSociety < ApplicationRecord
  belongs_to :teacher
  belongs_to :society
end
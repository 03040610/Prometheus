class TeacherLiterature < ApplicationRecord
  belongs_to :teacher
  belongs_to :literature
end
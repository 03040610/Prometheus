class TeachersSubjects < ApplicationRecord
  belongs_to :teacher
  belongs_to :subject
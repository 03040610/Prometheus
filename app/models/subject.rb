class Subject < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '国語' },
    { id: 3, name: '数学' },
    { id: 4, name: '英語' },
    { id: 5, name: '理科' },
    { id: 6, name: '社会' },
    { id: 7, name: 'その他' },
  ]
  include ActiveHash::Associations
  belongs_to :literature
  has_many :teachers_subjects
  has_many :teachers, through: :teachers_subjects
end
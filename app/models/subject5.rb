class Subject5 < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '社会' },
  ]
  include ActiveHash::Associations
  has_many :teachers
end

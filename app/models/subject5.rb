class Subject5 < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '社会' },
  ]
  include ActiveHash::Associations
  belongs_to :teacher
end

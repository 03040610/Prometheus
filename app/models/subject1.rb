class Subject1 < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '国語' },
  ]
  include ActiveHash::Associations
  has_many :teachers
end
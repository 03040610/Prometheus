class Subject4 < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '理科' },
  ]
  include ActiveHash::Associations
  has_many :teachers
end
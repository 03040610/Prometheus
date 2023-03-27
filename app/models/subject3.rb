class Subject3 < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '英語' },
  ]
  include ActiveHash::Associations
  belongs_to :teacher
end
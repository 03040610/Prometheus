class Subject2 < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '算数' },
  ]
  include ActiveHash::Associations
  belongs_to :teacher
end
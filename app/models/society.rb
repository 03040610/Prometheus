class Society < ActiveHash::Base
  self.data = [
    { id: 1,  name: '---',        age: nil },
    { id: 2,  name: '社会',       age: 小学1年生},
    { id: 3,  name: '社会',       age: 小学2年生},
    { id: 4,  name: '社会',       age: 小学3年生},
    { id: 5,  name: '社会',       age: 小学4年生},
    { id: 6,  name: '社会',       age: 小学5年生},
    { id: 7,  name: '社会',       age: 小学6年生},
    { id: 8,  name: '地理',       age: 中学生},
    { id: 9,  name: '歴史',       age: 中学生},
    { id: 10, name: '公民',       age: 中学生},
    { id: 11, name: '地理',       age: 高校生},
    { id: 12, name: '日本史',     age: 高校生},
    { id: 13, name: '世界史'      age: 高校生},
    { id: 14, name: '現代社会',   age: 高校生},
    { id: 15, name: '倫理',       age: 高校生},
    { id: 16, name: '政治・経済', age: 高校生},
  ]
  include ActiveHash::Associations
  belongs_to :subject
  has_many :teachers_societies
  has_many :teachers, through: :teachers_societies
end
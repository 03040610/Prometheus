class Science < ActiveHash::Base
  self.data = [
    { id: 1,  name: '---',      age: nil },
    { id: 2,  name: '理科',     age: 小学1年生},
    { id: 3,  name: '理科',     age: 小学2年生},
    { id: 4,  name: '理科',     age: 小学3年生},
    { id: 5,  name: '理科',     age: 小学4年生},
    { id: 6,  name: '理科',     age: 小学5年生},
    { id: 7,  name: '理科',     age: 小学6年生},
    { id: 8,  name: '生物',     age: 中学1年生},
    { id: 9,  name: '地学',     age: 中学1年生},
    { id: 10, name: '化学',     age: 中学1年生},
    { id: 11, name: '物理',     age: 中学1年生},
    { id: 12, name: '生物',     age: 中学2年生},
    { id: 13, name: '地学',     age: 中学2年生},
    { id: 14, name: '化学',     age: 中学2年生},
    { id: 15, name: '物理',     age: 中学2年生},
    { id: 16, name: '生物',     age: 中学3年生},
    { id: 17, name: '地学',     age: 中学3年生},
    { id: 18, name: '化学',     age: 中学3年生},
    { id: 19, name: '物理',     age: 中学3年生},
    { id: 20, name: '生物基礎', age: 高校1年生},
    { id: 21, name: '地学基礎', age: 高校1年生},
    { id: 22, name: '化学基礎', age: 高校1年生},
    { id: 24, name: '物理基礎', age: 高校1年生},
    { id: 25, name: '生物基礎', age: 高校2年生},
    { id: 26, name: '地学基礎', age: 高校2年生},
    { id: 27, name: '化学基礎', age: 高校2年生},
    { id: 28, name: '物理基礎', age: 高校2年生},
    { id: 29, name: '生物',     age: 高校3年生},
    { id: 30, name: '地学',     age: 高校3年生},
    { id: 31, name: '化学',     age: 高校3年生},
    { id: 32, name: '物理',     age: 高校3年生},
  ]
  include ActiveHash::Associations
  belongs_to :subject
  has_many :teachers_sciences
  has_many :teachers, through: :sciences
end
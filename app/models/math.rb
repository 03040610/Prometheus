class Math < ActiveHash::Base
  self.data = [
    { id: 1,  name: '---',        age: nil },
    { id: 2,  name: '算数',       age: 小学1年生},
    { id: 3,  name: '算数',       age: 小学2年生},
    { id: 4,  name: '算数',       age: 小学3年生},
    { id: 5,  name: '算数',       age: 小学4年生},
    { id: 6,  name: '算数',       age: 小学5年生},
    { id: 7,  name: '算数',       age: 小学6年生},
    { id: 8,  name: '初等代数学', age: 中学1年生},
    { id: 9,  name: '初等幾何学', age: 中学1年生},
    { id: 10, name: '確率・統計', age: 中学1年生},
    { id: 11, name: '初等代数学', age: 中学2年生},
    { id: 12, name: '初等幾何学', age: 中学2年生},
    { id: 13, name: '確率・統計', age: 中学2年生},
    { id: 14, name: '初等代数学', age: 中学3年生},
    { id: 15, name: '初等幾何学', age: 中学3年生},
    { id: 16, name: '確率・統計', age: 中学3年生},
    { id: 17, name: '数学1',      age: 高校1年生},
    { id: 18, name: '数学A',      age: 高校1年生},
    { id: 19, name: '数学2',      age: 高校2年生},
    { id: 20, name: '数学B',      age: 高校2年生},
    { id: 21, name: '数学3',      age: 高校3年生},
  ]
  include ActiveHash::Associations
  belongs_to :subject
  has_many :teachers_mathes
  has_many :teachers, through: :teachers_mathes
end
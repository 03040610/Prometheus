class English < ActiveHash::Base
  self.data = [
    { id: 1,  name: '---',         age: nil },
    { id: 2,  name: '英語',        age: 小学1年生},
    { id: 3,  name: '英語',        age: 小学2年生},
    { id: 4,  name: '英語',        age: 小学3年生},
    { id: 5,  name: '英語',        age: 小学4年生},
    { id: 6,  name: '英語',        age: 小学5年生},
    { id: 7,  name: '英語',        age: 小学6年生},
    { id: 8,  name: 'リスニング',  age: 小学生},
    { id: 8,  name: '文法',        age: 中学1年生},
    { id: 9,  name: '読解',        age: 中学1年生},
    { id: 10, name: '文法',        age: 中学1年生},
    { id: 11, name: '読解',        age: 中学2年生},
    { id: 12, name: '文法',        age: 中学2年生},
    { id: 13, name: '読解',        age: 中学2年生},
    { id: 14, name: 'リスニング',  age: 中学3年生},
    { id: 15, name: '文法',        age: 中学3年生},
    { id: 16, name: '読解',        age: 中学3年生},
    { id: 17, name: 'ライティング',age: 高校1年生},
    { id: 18, name: 'リスニング',  age: 高校1年生},
    { id: 19, name: '構文',        age: 高校2年生},
  ]
  include ActiveHash::Associations
  belongs_to :subject
  has_many :teachers_englishes
  has_many :teachers, through: :teachers_englishes
end
class Literature < ActiveHash::Base
  self.data = [
    { id: 1,  name: '---',   age: nil },
    { id: 2,  name: '国語',   age: 小学1年生},
    { id: 3,  name: '国語',   age: 小学2年生},
    { id: 4,  name: '国語',   age: 小学3年生},
    { id: 5,  name: '国語',   age: 小学4年生},
    { id: 6,  name: '国語',   age: 小学5年生},
    { id: 7,  name: '国語',   age: 小学6年生},
    { id: 8,  name: '現代文', age: 中学1年生},
    { id: 9,  name: '漢文',   age: 中学1年生},
    { id: 10, name: '古文',   age: 中学1年生},
    { id: 11, name: '現代文', age: 中学2年生},
    { id: 12, name: '漢文',   age: 中学2年生},
    { id: 13, name: '古文',   age: 中学2年生},
    { id: 14, name: '現代文', age: 中学3年生},
    { id: 15, name: '漢文',   age: 中学3年生},
    { id: 16, name: '古文',   age: 中学3年生},
    { id: 17, name: '文法',   age: 中学生},
    { id: 18, name: '現代文', age: 高校1年生},
    { id: 19, name: '漢文',   age: 高校1年生},
    { id: 20, name: '古文',   age: 高校1年生},
    { id: 21, name: '現代文', age: 高校2年生},
    { id: 22, name: '漢文',   age: 高校2年生},
    { id: 23, name: '古文',   age: 高校2年生},
    { id: 24, name: '現代文', age: 高校3年生},
    { id: 25, name: '漢文',   age: 高校3年生},
    { id: 26, name: '古文',   age: 高校3年生},
    { id: 27, name: '文法',   age: 高校生},
  ]
  include ActiveHash::Associations
  has_many :subjects
  has_many :teachers_literatures
  has_many :teachers, through: :teachers_literatures
end
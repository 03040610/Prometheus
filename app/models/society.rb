class Society < ActiveHash::Base
  self.data = [
    { id: 1,  name: '---',        age: nil },
    { id: 2,  name: '社会(小学1年生)',       age: '小学1年生'},
    { id: 3,  name: '社会(小学2年生)',       age: '小学2年生'},
    { id: 4,  name: '社会(小学3年生)',       age: '小学3年生'},
    { id: 5,  name: '社会(小学4年生)',       age: '小学4年生'},
    { id: 6,  name: '社会(小学5年生)',       age: '小学5年生'},
    { id: 7,  name: '社会(小学6年生)',       age: '小学6年生'},
    { id: 8,  name: '地理(中学生)',          age: '中学生'},
    { id: 9,  name: '歴史(中学生)',          age: '中学生'},
    { id: 10, name: '公民(中学生)',          age: '中学生'},
    { id: 11, name: '地理(高校生)',          age: '高校生'},
    { id: 12, name: '日本史(高校生)',        age: '高校生'},
    { id: 13, name: '世界史(高校生)',        age: '高校生'},
    { id: 14, name: '現代社会(高校生)',      age: '高校生'},
    { id: 15, name: '倫理(高校生)',          age: '高校生'},
    { id: 16, name: '政治・経済(高校生)',    age: '高校生'}
  ]
  include ActiveHash::Associations
  has_many :teachers
end
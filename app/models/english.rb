class English < ActiveHash::Base
  self.data = [
    { id: 1,  name: '---',                 age: nil },
    { id: 2,  name: '英語(小学1年生)',      age: '小学1年生'},
    { id: 3,  name: '英語(小学2年生)',      age: '小学2年生'},
    { id: 4,  name: '英語(小学3年生)',      age: '小学3年生'},
    { id: 5,  name: '英語(小学4年生)',      age: '小学4年生'},
    { id: 6,  name: '英語(小学5年生)',      age: '小学5年生'},
    { id: 7,  name: '英語(小学6年生)',      age: '小学6年生'},
    { id: 8,  name: 'リスニング(小学生)',   age: '小学生'},
    { id: 9,  name: '文法(中学1年生)',      age: '中学1年生'},
    { id: 10, name: '読解(中学1年生)',      age: '中学1年生'},
    { id: 11, name: '文法(中学2年生)',      age: '中学2年生'},
    { id: 12, name: '読解(中学2年生)',      age: '中学2年生'},
    { id: 13, name: '文法(中学3年生)',      age: '中学3年生'},
    { id: 14, name: '読解(中学3年生)',      age: '中学3年生'},
    { id: 15, name: 'リスニング(中学生)',   age: '中学生'},
    { id: 16, name: 'ライティング(中学生)', age: '中学生'},
    { id: 17, name: '構文(高校1年生)',      age: '高校1年生'},
    { id: 18, name: '長文読解(高校1年生)',  age: '高校1年生'},
    { id: 19, name: '構文(高校2年生)',      age: '高校2年生'},
    { id: 20, name: '長文読解(高校2年生)',  age: '高校2年生'},
    { id: 21, name: '構文(高校3年生)',      age: '高校3年生'},
    { id: 22, name: '長文読解(高校3年生)',  age: '高校3年生'},
    { id: 23, name: 'リスニング(高校生)',   age: '高校生'},
    { id: 24, name: 'ライティング(高校生)', age: '高校生'},
  ]
  include ActiveHash::Associations
  belongs_to :teacher
end
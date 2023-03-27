class Teacher < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email,              presence: true
  validates :nick_name,          presence: true
  validates :password,           presence: true, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }, length: { minimum: 6 }, confirmation: true
  validates :first_name,         presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
  validates :last_name,          presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
  validates :first_kana_name,    presence: true, format: { with: /\A[ァ-ヶー]+\z/}
  validates :last_kana_name,     presence: true, format: { with: /\A[ァ-ヶー]+\z/}
  validates :birth_day,          presence: true
  #validates :column,            presence: true
  validates :image,             presence: true

  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :subject1s
  has_many :subject2s
  has_many :subject3s
  has_many :subject4s
  has_many :subject5s
  has_many :literaturs
  has_many :mathematics
  has_many :englishs
  has_many :societys
  has_many :sciencs

  validates :subject1_id,   presence: true, on: :update, numericality: { only_integer: true, greater_than: 1 }
  validates :subject2_id,   presence: true, on: :update, numericality: { only_integer: true, greater_than: 1 }
  validates :subject3_id,   presence: true, on: :update, numericality: { only_integer: true, greater_than: 1 }
  validates :subject4_id,   presence: true, on: :update, numericality: { only_integer: true, greater_than: 1 }
  validates :subject5_id,   presence: true, on: :update, numericality: { only_integer: true, greater_than: 1 }
  validates :literature_id, presence: true, on: :update, numericality: { only_integer: true, greater_than: 1 }
  validates :mathematics_id,presence: true, on: :update, numericality: { only_integer: true, greater_than: 1 }
  validates :english_id,    presence: true, on: :update, numericality: { only_integer: true, greater_than: 1 }
  validates :science_id,    presence: true, on: :update, numericality: { only_integer: true, greater_than: 1 }
  validates :society_id,    presence: true, on: :update, numericality: { only_integer: true, greater_than: 1 }
end

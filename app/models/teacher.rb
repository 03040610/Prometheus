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
  validates :column,             presence: true
  validates :images,              presence: true

  has_many_attached :images

  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :teachers_subjects
  has_many :subjects, through: :teachers_subjects

  validates :subject_id, numericality: { only_integer: true, greater_than: 1 }, presence: true
end

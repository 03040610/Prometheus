class Teacher < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email,              presence: true, on: :create
  validates :nick_name,          presence: true, on: :create
  validates :password,           presence: true, on: :create, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }, length: { minimum: 6 }, confirmation: true
  validates :first_name,         presence: true, on: :create, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
  validates :last_name,          presence: true, on: :create, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
  validates :first_kana_name,    presence: true, on: :create, format: { with: /\A[ァ-ヶー]+\z/}
  validates :last_kana_name,     presence: true, on: :create, format: { with: /\A[ァ-ヶー]+\z/}
  validates :birth_day,          presence: true, on: :create
  validates :column,             presence: true, on: :update
  validates :image,              presence: true, on: :create

  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :subject1s
  has_many :subject2s
  has_many :subject3s
  has_many :subject4s
  has_many :subject5s
  has_many :literatures
  has_many :mathematics
  has_many :englishs
  has_many :societys
  has_many :sciences

  validate :at_least_one_subjects_selected, on: :update
  validate :at_least_one_subject_selected, on: :update
  
  def at_least_one_subjects_selected
    if [subject1_id, subject2_id, subject3_id, subject4_id, subject5_id].none? { |id| id != 1 }
      errors.add(:base, "At least one subjects must be selected.")
    end
  end

  def at_least_one_subject_selected
    if [literature_id, mathematics_id, english_id, society_id, science_id].none? { |id| id != 1 }
      errors.add(:base, "At least one subject must be selected.")
    end
  end
end

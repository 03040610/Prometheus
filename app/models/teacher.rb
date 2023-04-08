class Teacher < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true, on: :create
  validates :nick_name, presence: true, on: :create
  validates :password, presence: true, on: :create, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }, length: { minimum: 6 }, confirmation: true
  validates :first_name, presence: true, on: :create, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
  validates :last_name, presence: true, on: :create, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
  validates :first_kana_name, presence: true, on: :create, format: { with: /\A[ァ-ヶー]+\z/ }
  validates :last_kana_name, presence: true, on: :create, format: { with: /\A[ァ-ヶー]+\z/ }
  validates :birth_day, presence: true, on: :create
  validates :face_image, presence: true, on: :create
  validates :column, presence: true, on: :update
  validate  :validate_certificate_images_count, on: :update

  has_one_attached :face_image
  has_many_attached :certificate_images
  has_one :room

  def validate_certificate_images_count
    if certificate_images.attached? && certificate_images.count > 5
      errors.add(:certificate_images, "should be less than or equal to 5")
    end
  end

  extend ActiveHash::Associations::ActiveRecordExtensions 
  belongs_to_active_hash :subject1
  belongs_to_active_hash :subject2
  belongs_to_active_hash :subject3
  belongs_to_active_hash :subject4
  belongs_to_active_hash :subject5
  has_many :literatures
  has_many :mathematics
  has_many :englishs
  has_many :sciences
  has_many :societies

  #validate :at_least_one_subjects_selected, on: :update
  ##validate :at_least_one_subjects_selected, on: :update
  #validate :at_least_one_subject_selected, on: :update

  # def at_least_one_subjects_selected
  #   unless [subject1_id, subject2_id, subject3_id, subject4_id, subject5_id].include?(2)
  #     errors.add(:base, "At least one subject must be selected with an id of 2.")
  #   end
  # end
  
  # def at_least_one_subject_selected
  #   unless [literature_id, mathematics_id, english_id, society_id, science_id].include?(2)
  #     errors.add(:base, "At least one subject must be selected with an id of 2.")
  #   end
  # end
  
end
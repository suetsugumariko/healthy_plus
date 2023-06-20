class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



  #1:Nの関係性　アソシエーション（関連付け）
  has_many :health_record_sheet, dependent: :destrpy
  has_many :dosage_record_sheet, dependent: :destrpy
  has_many :activity_and_sleep_log_chart, dependent: :destrpy
  has_many :next_medical_checkup_date_list, dependent: :destrpy
  has_many :prescription_list, dependent: :destrpy
  has_many :cooking_menu_list, dependent: :destrpy
  has_many :beauty_nutrition_knowledge, dependent: :destrpy
end

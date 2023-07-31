class Customer < ApplicationRecord
  #会員
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



  #1:Nの関係性　アソシエーション（関連付け）
 has_many :health_record_sheets, dependent: :destroy
 has_many :dosage_record_sheets, dependent: :destroy
 has_many :activity_and_sleep_log_charts, dependent: :destroy
 has_many :next_medical_checkup_date_lists, dependent: :destroy
 has_many :prescription_lists, dependent: :destroy
 has_many :cooking_menu_lists, dependent: :destroy
 has_many :beauty_nutrition_knowledges, dependent: :destroy


 #退会ユーザーはログインできなくする
   #def active_for_authentication?
     #super && (deleted == true)
   #end

end

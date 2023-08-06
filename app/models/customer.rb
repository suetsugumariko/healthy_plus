class Customer < ApplicationRecord
  #会員
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



  #1:Nの関係性　アソシエーション（関連付け）
 has_many :health_records, dependent: :destroy
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

# == Schema Information
#
# Table name: customers
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  first_name_kana        :string
#  guest                  :string
#  is_deleted             :boolean          default(FALSE)
#  last_name              :string
#  last_name_kana         :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_customers_on_email                 (email) UNIQUE
#  index_customers_on_reset_password_token  (reset_password_token) UNIQUE
#

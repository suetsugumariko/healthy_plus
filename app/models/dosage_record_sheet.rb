class DosageRecordSheet < ApplicationRecord
#服用記録表
  belongs_to :customer

  validates :title, presence: true, length: { maximum: 100 }
  validates :content, presence: true, length: { maximum: 500 }
end

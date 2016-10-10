class Order < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }
  validates :phone, presence: true, length: { maximum: 16 }
end

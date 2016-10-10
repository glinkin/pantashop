class PhoneOrder < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }
  validates :phone, presence: true,
            length: { maximum: 16, message: "Номер телефон не может содержать больше 16 цифр" },
            numericality: { only_integer: true, message: "Номер телефон может содержать только цифры" }
end
# message: 'Длина телефона не должна превышать 16 цифр'

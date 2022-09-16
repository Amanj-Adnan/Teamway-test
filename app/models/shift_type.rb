class ShiftType < ApplicationRecord
  has_one :shift

  validates :type_name ,:form_to , presence: :true
end

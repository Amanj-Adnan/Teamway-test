class ShiftType < ApplicationRecord
  validates :type_name ,:form_to , presence: :true
end

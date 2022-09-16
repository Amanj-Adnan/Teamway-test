class Shift < ApplicationRecord
  belongs_to :worker
  belongs_to :shift_type

  validates :working_date,presence: true, uniqueness: true
end

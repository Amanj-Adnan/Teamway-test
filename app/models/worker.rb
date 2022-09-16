class Worker < ApplicationRecord
  has_many :shifts

  validates :name ,:age , presence: :true
end

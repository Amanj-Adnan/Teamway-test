class Worker < ApplicationRecord
  has_many :shifts , dependent: :destroy

  validates :name ,:age , presence: :true
end

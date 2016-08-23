class Partition < ApplicationRecord
  has_many :folders

  validates :name, uniqueness: true
end

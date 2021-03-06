class Folder < ApplicationRecord

  belongs_to :partition, optional: true
  has_many :sub_folders, class_name: "Folder", foreign_key: "parent_id"
  belongs_to :parent, class_name: "Folder", foreign_key: "parent_id", optional: true
  has_many :documents

  validates :name, uniqueness: true
end

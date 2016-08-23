class Folder < ApplicationRecord

  has_many :documents
  has_many :sub_folders, class_name: "Folder", foreign_key: "parent_id"
  belongs_to :parent, class_name: "Folder", foreign_key: "parent_id", optional: true

  validates :name, uniqueness: true
end

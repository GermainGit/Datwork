class Matiere < ApplicationRecord
  has_many :devoirs
  validates :name, :color, presence: true
  validates :name, uniqueness: true
end

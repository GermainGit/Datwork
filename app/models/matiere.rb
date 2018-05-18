class Matiere < ApplicationRecord
  has_many :devoirs
  belongs_to :user
  validates :name, :color, presence: true
  validates :name, uniqueness: true
  def to_s
    "#{name}"
  end
end

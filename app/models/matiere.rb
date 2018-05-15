class Matiere < ApplicationRecord
  has_many :devoirs
  belongs_to :color
    def to_s
    "#{nom}"
  end
end

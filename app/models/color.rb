class Color < ApplicationRecord
  has_many :matieres
  def to_s
    "#{nom}"
  end
end

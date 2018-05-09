class Etat < ApplicationRecord
  has_many :devoirs
  def to_s
    "#{nom}"
  end
end

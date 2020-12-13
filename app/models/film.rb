class Film < ApplicationRecord
  has_one :premiere
  has_many :teams
end

class Team < ApplicationRecord
  belongs_to :film
  belongs_to :actor
end

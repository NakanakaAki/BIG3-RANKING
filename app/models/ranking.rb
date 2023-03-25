class Ranking < ApplicationRecord

  belongs_to :user
  has_one   :weight
  
end

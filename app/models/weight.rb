class Weight < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  with_options presence: true do
    validates :weight
    validates :category_id

  end

  validates :category_id, numericality: { other_than: 0, message: "can't be blank" }

  belongs_to :category
  belongs_to :user
  #belongs_to :ranking
end

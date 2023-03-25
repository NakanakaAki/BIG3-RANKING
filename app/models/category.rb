class Category < ActiveHash::Base
  self.data = [
    { id: 0,  name: '---' },
    { id: 1,  name: 'ベンチプレス' },
    { id: 2,  name: 'スクワット' },
    { id: 3,  name: 'デッドリフト' },
  ]
  include ActiveHash::Associations
  has_many :weights
end

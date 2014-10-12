class Review < ActiveRecord::Base
  validates :rating, presence: true, inclusion: { in: 1..5 }
  validates :body, presence: true

  belongs_to :book
end

class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :author, presence: true
  validates :year, presence: true
  has_many :reviews
end

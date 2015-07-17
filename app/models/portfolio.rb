class Portfolio < ActiveRecord::Base
  has_many :stocks
  has_many :notes, through: :stocks

  belongs_to :user

  validates :stock_id, presence: true, uniqueness: true
  validates :user_id, presence: true, uniqueness: true
end 

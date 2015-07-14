class Portfolio < ActiveRecord::Base
  has_many :stocks

  validates :stock_id, presence: true, uniqueness: true
end

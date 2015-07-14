class Stock < ActiveRecord::Base
  has_many :notes
  belongs_to :portfolio

  validates :ticker_symbol, presence: true, uniqueness: true
  validates :price, presence: true
end

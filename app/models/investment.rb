class Investment < ActiveRecord::Base
  belongs_to :portfolio
  has_many :notes

  validates :portfolio_id, presence: true
  validates :ticker, presence: true
end

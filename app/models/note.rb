class Note < ActiveRecord::Base
  belongs_to :user
  belongs_to :stock

  validates :stock_id
  validates :dates, presence: true
  validates :body, presence: true
  validates :user_id, presence: true
end

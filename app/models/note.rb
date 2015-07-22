class Note < ActiveRecord::Base
  belongs_to :user
  belongs_to :investment

  validates :stock_id, presence: true
  validates :dates, presence: true
  validates :title, presence: true
  validates :description, presence: true
end

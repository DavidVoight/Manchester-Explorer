class Investment < ActiveRecord::Base
  belongs_to :portfolio
  belongs_to :note

  validates :porfolio, presence: true
  validates :note, presence: true
end

class Portfolio < ActiveRecord::Base
  has_many :investments
  has_many :notes, through: :investments

  belongs_to :user

  validates :user_id, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true

  PERFORMANCE = {
    last_3_months: "50%",
    last_6_months: "100%"
  }

  PERFORMANCETEST = {
    last_3_months: {explorer: "10%", sp: "10%", difference: "10%" },
  }
end

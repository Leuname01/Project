class Reservation < ApplicationRecord
  validates :prepaid, presence: true
  validates :date, presence: true, inclusion: { in: (Date.today..Date.today+5.years) }
  validates :hour, presence: true
  validates_uniqueness_of :hour, scope: :date

end

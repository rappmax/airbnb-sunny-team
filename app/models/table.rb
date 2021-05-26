class Table < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :picture
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end

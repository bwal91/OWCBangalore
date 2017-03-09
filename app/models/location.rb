class Location < ApplicationRecord
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

	has_attached_file :image
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf"]
end

# class ApiKey < ApplicationRecord
#   before_create :generate_access_token
# private
#   def generate_access_token
#     begin
#       self.access_token = "AIzaSyAb3YP9ktLSgyMc8LTmfv7JwX4fK6TvMOY"
#     end while self.class.exists?(access_token: access_token)
#   end
# end

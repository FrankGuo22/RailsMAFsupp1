require 'active_resource'  
class LineItem < ActiveResource::Base
  self.site= "http://localhost:3000/"
  self.user = "admin@aber.ac.uk"
  self.password = "BMGA1UECxMMT3JnYW5pemF0aW9uMRUwEwYDVQQKEwxPcmdhbml6YXRpb2"
end
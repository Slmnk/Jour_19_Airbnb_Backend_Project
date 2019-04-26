class Reservation < ApplicationRecord

  belongs_to :user, :listing
  

end

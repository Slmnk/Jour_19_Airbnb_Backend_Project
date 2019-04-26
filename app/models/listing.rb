class Listing < ApplicationRecord

  validates :available_beds,
    presence: true
    # mettre le strictement positif

  validates :price,
    presence: true

  validates :description,
    presence: true,
    length: { minimum: 140}

  validates :welcome_message,
    presence: true

  belongs_to :user, :city
  has_many :reservations

  def overlaping_reservation?(datetime)
  # vérifie dans toutes les réservations du listing s'il y a une réservation qui tombe sur le datetime en entrée
  Reservation.where
  end

end

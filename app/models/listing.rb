class Listing < ApplicationRecord

  validates :available_beds,
    presence: true
    amount: { greater_than => 0}
    # mettre le strictement positif

  validates :price,
    presence: true,
    amount: { greater_than => 0}
    # mettre le strictement positif

  validates :description,
    presence: true,
    length: { minimum: 140}

  validates :welcome_message,
    presence: true

  belongs_to :user
  belongs_to :city

  has_many :reservations

  def overlaping_reservation?(datetime)
  # vérifie dans toutes les réservations du listing s'il y a une réservation qui tombe sur le datetime en entrée
  if Reservation.where.include?()
  end

end

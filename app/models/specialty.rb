class Specialty < ApplicationRecord

	has_many :join_doctor_specialties #cette ligne permet de faire la jonction entre doctor et specialty, passant par la table join_doctor_specialty
  has_many :specialties, through: :join_doctor_specialties

end

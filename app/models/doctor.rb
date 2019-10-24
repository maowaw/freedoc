class Doctor < ApplicationRecord
#un docteur a plusieurs rdv, plusieurs patients, une seule ville
	has_many :appointments
	has_many :patients, through: :appointments
	belongs_to :city, optional: true

#pour l'ajout d'une table N-N specialty, on fait comme pour appointments entre doctor et patient, cette fois join_doctor_specialty entre doctor et specialty
	has_many :join_doctor_specialty
	has_many :specialties, through: :join_doctor_specialty
	
end

class JoinDoctorSpecialty < ApplicationRecord

#pour l'ajout d'une table N-N specialty, on fait comme pour appointments entre doctor et patient, cette fois join_doctor_specialty entre doctor et specialty

belongs_to :doctor #un join_doctor_specialty n'a qu'un docteur
belongs_to :specialty #idem

end

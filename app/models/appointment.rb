class Appointment < ApplicationRecord

  belongs_to :doctor #un appointment ne peut avoir qu'un docteur
  belongs_to :patient #idem
  belongs_to :city, optional: true #idem

end

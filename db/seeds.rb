require 'faker'

#Ces 3 lignes pour ne pas se retrouver avec 1000 données, permet de supprimer les données précédentes à chaques qu'on $rails db:seed
Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all
City.destroy_all
Specialty.destroy_all
JoinDoctorSpecialty.destroy_all

20.times do

#city et specialty n'ont de lien avec personne, donc en premier
  city_x = City.create!(name: Faker::Nation.capital_city)
  specialty_x = Specialty.create!(name: Faker::Cannabis.health_benefit)

end


50.times do

  patient_x = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
  doctor_x = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.postcode, city: City.all.sample)

end

100.times do 

  appointment_x = Appointment.create!(doctor: Doctor.all.sample, patient: Patient.all.sample, date: Faker::Date.in_date_period.to_datetime, city: City.all.sample)
  join_doctor_specialty_x = JoinDoctorSpecialty.create!(doctor: Doctor.all.sample, specialty: Specialty.all.sample)

end
class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
    t.datetime :date

#un appointment a un seul docteur, patient, ville 
    t.belongs_to :doctor, index: true
    t.belongs_to :patient, index: true
    t.belongs_to :city, indew: true

    t.timestamps
    end
  end
end

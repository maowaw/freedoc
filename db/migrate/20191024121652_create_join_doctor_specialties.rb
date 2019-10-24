class CreateJoinDoctorSpecialties < ActiveRecord::Migration[5.2]
  def change
    create_table :join_doctor_specialties do |t|
      t.string :name

#mêmes liens que appointments, mais pour doctor et specialty
    t.belongs_to :doctor, index: true
    t.belongs_to :specialty, index: true

      t.timestamps
    end
  end
end

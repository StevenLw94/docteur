class AddAppointmentsToDoctors < ActiveRecord::Migration[6.0]
    def change
      add_reference :appointments, :doctor, null: false, foreign_key: true
    end
end
  
class Doctor < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments
end
   
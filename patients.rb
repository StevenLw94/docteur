class AddAppointmentsToPatients < ActiveRecord::Migration[6.0]
    def change
      add_reference :appointments, :patient, null: false, foreign_key: true
    end
  end
  class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments
  end
     
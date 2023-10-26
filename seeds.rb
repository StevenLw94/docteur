

# pour creer docteur shaq et docteur pau 
doctor1 = Doctor.create(first_name: 'shaq', last_name: 'fu', specialty: 'pivot', zip_code: '95020')
doctor2 = Doctor.create(first_name: 'pau', last_name: 'gasol', specialty: 'hispanologue', zip_code: '67890')

# creer les patient 
patient1 = Patient.create(first_name: 'michael', last_name: 'Johnson')
patient2 = Patient.create(first_name: 'vince', last_name: 'carton')

# Création des rendez-vous
appointment1 = Appointment.create(date: DateTime.now + 1.day, doctor: doctor1, patient: patient1)
appointment2 = Appointment.create(date: DateTime.now + 2.days, doctor: doctor2, patient: patient2)
appointment3 = Appointment.create(date: DateTime.now + 3.days, doctor: doctor1, patient: patient2)
appointment4 = Appointment.create(date: DateTime.now + 4.days, doctor: doctor2, patient: patient1)

puts "le seed marches bien tu vois! "

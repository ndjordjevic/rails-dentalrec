# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Appointment.delete_all
Dentist.delete_all
Patient.delete_all
Office.delete_all

Dentist.create ({first_name: 'Dragica', last_name: 'Mikasinovic', email: 'dmikasinovic@gmail.com', phone: '065 111 222 33', manager_id: nil})
Dentist.create ({first_name: 'Ljubica', last_name: 'Mikasinovic', email: 'ljmikasinovic@gmail.com', phone: '065 444 555 66',
                 manager_id: Dentist.find_by_email('dmikasinovic@gmail.com').id})

Patient.create([{first_name: 'Nenad', last_name: 'Djordjevic', email: 'ndjordjevic@gmail.com'},
                {first_name: 'Vladimir', last_name: 'Jankovic', email: 'vjankovic@gmail.com'}])

Appointment.create ([{date: '2015-08-01', symptoms: 'cleaning',
                      patient_id: Patient.find_by_first_name('Nenad').id, dentist_id: Dentist.find_by_email('ljmikasinovic@gmail.com').id},
                     {date: '2015-08-03', symptoms: 'pain',
                      patient_id: Patient.find_by_first_name('Vladimir').id, dentist_id: Dentist.find_by_email('dmikasinovic@gmail.com').id}])

dental_design = Office.create ({name: 'Dental Design', street: 'Cvijecava 17', city: 'Smederevo', zip: '11300', state: 'SRB', country: 'Serbia', phone: '026 444 555',
                                dentist_id: Dentist.find_by_email('dmikasinovic@gmail.com').id})

gaga = Dentist.find_by_email ('dmikasinovic@gmail.com')
gaga.office = dental_design
gaga.save

buba = Dentist.find_by_email ('ljmikasinovic@gmail.com')
buba.office = dental_design
buba.save
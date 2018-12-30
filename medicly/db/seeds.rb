# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
AppointmentType.destroy_all

doctors = [
  {name: 'Doctor Who', speciality: 'cardiovascular', post_code: 'SE1P 4EW'},
  {name: 'Doctor Strange', speciality: 'allergies', post_code: 'N1 2HL'},
  {name: 'Doctor Smith', speciality: 'forensics', post_code: 'E1 6SE'},
  {name: 'Doctor Lisa', speciality: 'cardiovascular', post_code: 'NW8 9LB'},
  {name: 'Doctor Luke', speciality: 'neurology', post_code: 'NE47 6DT'},
  {name: 'Doctor Stone', speciality: 'biochemical genetics', post_code: 'NW9 5GR'},
  {name: 'Doctor Sasha', speciality: 'dermatology', post_code: 'SW19 8RF'},
  {name: 'Doctor John', speciality: 'forensics', post_code: 'SE15 5HD'},
  {name: 'Doctor Jules', speciality: 'radiology', post_code: 'SW17 0NP'}
]

doctors.each {|doctor| Doctor. create(doctor)}

patients = [
  {name: 'Louis Jackson', age: 16, birth_date: "2002-10-02", gender: 'male', allergies: 'ibuprofen'},
  {name: 'Ronald Dawson', age: 35, birth_date: "1983-02-17", gender: 'male', allergies: 'nuts'},
  {name: 'Alessandra Lake', age: 54, birth_date: "1964-12-26", gender: 'female', allergies: 'none'},
  {name: 'Peter Lasalle', age: 80, birth_date: "1938-04-02", gender: 'male', allergies: 'kiwi, pineapple'},
  {name: 'Gisele Peters', age: 73, birth_date: "1945-11-15", gender: 'female', allergies: 'gluten'},
  {name: 'Georgia Smith', age: 43, birth_date: "1975-07-29", gender: 'female', allergies: 'none'},
  {name: 'Nadine Knight', age: 15, birth_date: "2003-05-16", gender: 'female', allergies: 'nuts'},
  {name: 'Chris Donald', age: 36, birth_date: "1982-09-08", gender: 'male', allergies: 'none'}
]

patients.each {|patient| Patient. create(patient)}

appointments = [
  {doctor_id: 2, patient_id: 3, appointment_type_id: 1, note: "Diagnosis: Mild Flu and Chest Infection", appointment_date: "2018-10-22"},
  {doctor_id: 4, patient_id: 7, appointment_type_id: 2, note: "Vaccine: MMR", appointment_date: "2017-09-18"},
  {doctor_id: 6, patient_id: 3, appointment_type_id: 1, note: "Diagnosis: Period cramp and pain in lower back", appointment_date: "2018-03-05"},
  {doctor_id: 3, patient_id: 5, appointment_type_id: 3, note: "Emergency: Displaced shoulder", appointment_date: "2014-11-28"},
  {doctor_id: 6, patient_id: 1, appointment_type_id: 1, note: "Diagnosis: Twisted ankle", appointment_date: "2017-08-09"},
  {doctor_id: 4, patient_id: 8, appointment_type_id: 3, note: "Emergency: Asthma attack due to nut allergic reaction", appointment_date: "2016-04-18"},
  {doctor_id: 5, patient_id: 5, appointment_type_id: 1, note: "Diagnosis: Mild UTI", appointment_date: "2018-04-15"},
  {doctor_id: 1, patient_id: 4, appointment_type_id: 2, note: "Vaccine: Chickenpox", appointment_date: "2017-06-02"},
  {doctor_id: 9, patient_id: 3, appointment_type_id: 2, note: "Vaccine: Flu", appointment_date: "2018-03-27"},
  {doctor_id: 3, patient_id: 2, appointment_type_id: 1, note: "Diagnosis: Nausea and dizziness due to low blood pressure", appointment_date: "2018-05-08"}
]

appointments.each {|appointment| Appointment. create(appointment)}

appointment_types = [
  {name: 'general check-up/booked appointment'},
  {name: 'injection'},
  {name: 'emergency'}
]

appointment_types.each {|appointment_type| AppointmentType. create(appointment_type)}

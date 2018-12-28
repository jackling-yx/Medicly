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
  {name: 'Samantha', age: 23, birth_date: 19950822, gender: 'female', allergies: 'shellfish'},
  {name: 'Louis', age: 16, birth_date: 20021002, gender: 'male', allergies: 'ibuprofen'},
  {name: 'Ronald', age: 35, birth_date: 19830217, gender: 'male', allergies: 'nuts'},
  {name: 'Alessandra', age: 54, birth_date: 19641226, gender: 'female', allergies: 'none'},
  {name: 'Peter', age: 80, birth_date: 19380402, gender: 'male', allergies: 'kiwi, pineapple'},
  {name: 'Gisele', age: 73, birth_date: 19451115, gender: 'female', allergies: 'gluten'},
  {name: 'Georgia', age: 43, birth_date: 1975-07-29, gender: 'female', allergies: 'none'},
  {name: 'Nadine', age: 15, birth_date: 2003-05-16, gender: 'female', allergies: 'nuts'},
  {name: 'Chris', age: 36, birth_date: 1982-09-08, gender: 'male', allergies: 'none'}
]

patients.each {|patient| Patient. create(patient)}

appointments = [
  {doctor_id: 2, patient_id: 3, appointment_type_id: 1, note: 'Diagnosis: Mild Flu and Chest Infection'},
  {doctor_id: 4, patient_id: 7, appointment_type_id: 2, note: 'Vaccine: MMR'},
  {doctor_id: 6, patient_id: 3, appointment_type_id: 1, note: 'Diagnosis: Period cramp and pain in lower back'},
  {doctor_id: 3, patient_id: 5, appointment_type_id: 3, note: 'Emergency: Displaced shoulder'},
  {doctor_id: 6, patient_id: 1, appointment_type_id: 1, note: 'Diagnosis: Twisted ankle'},
  {doctor_id: 4, patient_id: 8, appointment_type_id: 3, note: 'Emergency: Asthma attack due to nut allergic reaction'},
  {doctor_id: 5, patient_id: 5, appointment_type_id: 1, note: 'Diagnosis: Mild UTI'},
  {doctor_id: 1, patient_id: 4, appointment_type_id: 2, note: 'Vaccine: Chickenpox'},
  {doctor_id: 9, patient_id: 3, appointment_type_id: 2, note: 'Vaccine: Flu'},
  {doctor_id: 3, patient_id: 2, appointment_type_id: 1, note: 'Diagnosis: Nausea and dizziness due to low blood pressure'}
]

appointments.each {|appointment| Appointment. create(appointment)}

appointment_types = [
  {name: 'general check-up/booked appointment'},
  {name: 'injection'},
  {name: 'emergency'}
]

appointment_types.each {|appointment_type| AppointmentType. create(appointment_type)}

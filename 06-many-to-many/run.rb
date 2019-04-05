require 'pry'
require_relative 'doctor.rb'
require_relative 'patient.rb'
require_relative 'appointment.rb'


doctor1 = Doctor.new("Victoria Do")
doctor2 = Doctor.new("Mark Roy")

patient1 = Patient.new("Olivia")
patient2 = Patient.new("Zen")
patient3 = Patient.new("Tim")

appointment1 = Appointment.new(doctor1,patient1,"9 am")
appointment2 = Appointment.new(doctor2,patient2,"10 am")
appointment3 = Appointment.new(doctor2,patient1,"12 pm")
appointment4 = Appointment.new(doctor1,patient3,"3 pm")
appointment5= Appointment.new(doctor1,patient2,"2 pm")


binding.pry
0

# Many to Many
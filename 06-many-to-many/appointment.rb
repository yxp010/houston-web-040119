class Appointment 

    attr_accessor :doctor, :patient, :time

    @@all = []

    def initialize(doctor, patient, time)

        @doctor = doctor
        @patient = patient
        @time = time

        @@all << self
    end

    def self.all
        @@all
    end






end
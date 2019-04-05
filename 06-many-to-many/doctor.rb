class Doctor

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end

    end

    def patients

        # all_appointments = Appointment.all.select do |appointment|
        #                      appointment.doctor == self
        #                     end


         #self.appointments
        appointments.map do |appointment|
            appointment.patient
        end
       

    end


end

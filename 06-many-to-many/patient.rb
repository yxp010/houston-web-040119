class Patient

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
            appointment.patient == self
        end

        # Appointment.all.select {|appointment|  appointment.patient == self}
    end

    def doctors
        appointments.map do |appointment|
            appointment.doctor
        end
    end


end
class Doctor
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    attr_reader :name
    def self.all
        @@all
    end
    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end
    def new_appointment(appointment,patient)
        Appointment.new(appointment,patient,self)
    end
    def patients
        self.appointments.collect{|appointment| appointment.patient}.uniq
    end
end
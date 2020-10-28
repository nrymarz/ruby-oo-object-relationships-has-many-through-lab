class Patient
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
        Appointment.all.select {|appointment| appointment.patient == self}
    end
    def new_appointment(appointment,doctor)
        Appointment.new(appointment,self,doctor)
    end
    def doctors
        self.appointments.collect{|appointment| appointment.doctor}.uniq
    end
end
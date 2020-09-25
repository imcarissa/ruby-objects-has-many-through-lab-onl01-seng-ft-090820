class Patient
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, doctor)
    appointment = Appointment.new(date)
    appointment.doctor = doctor
    appointment.patient = self
    appointment
  end
    
  def appointments
    Appointment.all.select { |appt| appt.patient == self }
  end
  
  def doctors
   self.appointments.map { |a| a.doctors == self }.uniq
  end
  
end
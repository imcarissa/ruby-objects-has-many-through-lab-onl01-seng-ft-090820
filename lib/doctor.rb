class Doctor
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self }
  end 
  
  def new_appointment(date, patient)
    new_appointment = Appointment.new()
  end
  
  def patients
    self.appointments.map { |a| a.patient }.uniq
  end
  
end
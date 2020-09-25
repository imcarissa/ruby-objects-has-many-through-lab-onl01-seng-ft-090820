class Doctor
  
  attr_accessor :name, :appointments
  
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
    
  end
  
  def patients
    
  end
  
end
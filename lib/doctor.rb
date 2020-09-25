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
    Appointment.all.select { |appt| appt.doctor == self }
  end 
  
  def new_appointment
    # takes in a date and instance of Patient class
    # creates a new Appointment. Appointment should know it belongs to the Doctor
  end
  
  def patients
    
  end
  
end
class Appointment
  
  attr_accessor :name, :date, :doctor, :patient
  
  @@all = []
  
  def initialize(name, date=nil, doctor=nil, patient=nil)
    @name = name
    @date = date
    @doctor = doctor
    @patient = patient
    @@all << self
  end
  
  def self.all
    @all
  end
  
  def patient
    
  end
  
  def doctor
    
  end
  
end
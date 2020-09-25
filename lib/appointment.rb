class Appointment
  
  attr_accessor :date, :doctor, :patient
  
  @@all = []
  
  def initialize(name, date=nil, doctor=nil, patient=nil)
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
class Doctor
  attr_accessor :name, :appointment, :date
  @@all = []

  def initialize(name)
    @name = name
    @@all<<self
  end
  def self.all
    @@all
  end
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end
  def appointments
    Appointment.all.select{|a| a.doctor == self}
  end
  def patients
    appointments.collect {|a| a.patient}
  end
end
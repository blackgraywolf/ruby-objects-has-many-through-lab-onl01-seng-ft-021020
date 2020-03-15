class Appointment

  attr_reader :patient, :doctor, :date
attr_accessor  :patient
  @@all = []

  def initialize(patient ="", doctor = "", date = "")
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

  def patient
    @patient
  end

  def doctor
    @doctor
  end

end
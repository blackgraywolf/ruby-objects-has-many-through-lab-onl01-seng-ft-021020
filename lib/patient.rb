class Patient

  attr_accessor :name, :appointment, :doctor
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end


 def doctors
    Appointment.all.map do |appointment|
      appointment.doctor
    end
  end
 def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
   # self.appointments.last
  end
  # def new_song(name, genre)
  #   song = Song.new(name, self, genre)
  #   self.songs.last
  # end

end 
class Room
  class OverCapacityError < Exception
  end
  attr_accessor :id
  def initialize(attributes = {})
    @name = attributes[:name]
    @capacity = attributes[:capacity]
    @patients = []
  end

  def full?
    @capacity <= @patients.length
  end

  def add_patient(patient)
    fail OverCapacityError, "Room is full" if self.full?
    @patients << patient
    patient.room = self
  end
end

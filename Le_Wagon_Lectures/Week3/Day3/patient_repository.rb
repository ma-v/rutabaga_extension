require "csv"
require_relative "room"

class PatientRepository
  attr_accessor :id
  def initialize
    @csv_file_path = csv_file_path
    @patients = []
    @next_id = 0
    load_csv
  end

  def add_patient(patient)
    @patients << patient
    patient.id = @next_id
    @next_id +=1
    save_csv
  end

  private

  def save_csv
    CSV.open(@csv_file_path, 'wb', csv_options) do |csv|
      csv << ["id", "name", "cured", "room_id"]
      @patients.each do |patient|
        csv << [patient.id, patient.name, patient.cured, patient.room.id]
      end
    end
  end

  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_file_path, csv_options) do |row|
      row[:id] = row[:id].to_i
      row[:cured] = row[:cured] == "true"
      row[:room] = @room_repository.find(row[:room_id].to_i)
      @patients << Patient.new(row)
    end
    @next_id = @patients.last.id + 1
  end
end

require "csv"
require_relative "room"

class RoomRepository

  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @rooms = []
    @next_id = 0
    load_csv
  end

  def add_room(room)
    @rooms << room
    room.id = @next_id
    @next_id +=1
    save_csv
  end

  def find(id)
    @room.find {|room| room.id == id}
  end

  private

  def save_csv
    CSV.open(@csv_file_path, 'wb', csv_options) do |csv|
      csv << ["id", "name", "capacity"]
      @rooms.each do |room|
        csv << [room.id, room.name, room.capacity]
      end
    end
  end

  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_file_path, csv_options) do |row|
      row[:id] = row[:id].to_i
      @rooms << Room.new(row)
    end
    @next_id = @rooms.last.id + 1
  end
end

require_relative 'room'
require_relative 'patient'
require_relative 'room_repository'

room_repository = RoomRepository.new("rooms.csv")
p room_repository.rooms

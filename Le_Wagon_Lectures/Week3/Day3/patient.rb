class Patient
  attr_accessor :room
  def initialize(attributes = {})
    @name = attributes[:name]
    @cured = attributes[:cured] || false
    @room = attributes[:room]
    @id = attributes[:id]
  end

  def cure!
    @cured = true
  end
end




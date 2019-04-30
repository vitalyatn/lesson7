class Wagon
  include Manufacturer
  attr_reader :id, :type

  def initialize(id)
    @id = id
  end
end

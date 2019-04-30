class PassengerWagon < Wagon
  attr_reader :places, :occupied_place

  def initialize(id, places)
    super(id)
    @places = places
    @occupied_place = 0
    @type = "пассажирский"
  end

  def take_place
   @occupied_place += 1
  end

  def free_place
    @places - @occupied_place
  end

   def message
    "тип вагона: #{@type}, количество свободных мест: #{self.free_place} , количество занятых мест: #{@occupied_place}"
  end
end

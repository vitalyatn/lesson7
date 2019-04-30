class CargoWagon < Wagon
  attr_reader :volume, :occupied_volume

  def initialize(id, volume)
    super(id)
    @volume = volume
    @occupied_volume = 0
    @type = "грузовой"
  end

  def take_volume(value)
   @occupied_volume += value
  end

  def free_volume
    @volume - @occupied_volume
  end

  def message
    "тип вагона: #{@type}, количество свободного места: #{self.free_volume} т., количество занятого места: #{@occupied_volume}"
  end
end

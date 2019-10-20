class Vehicle
  attr_reader :year, :make, :model, :passengers

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @speed = false
    @passengers = []
  end

  def speeding?
    @speed
  end

  def speed
    @speed = true
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def num_adults
    adults = @passengers.find_all do |passenger|
      passenger.adult?
    end
    adults.count
  end

end

class Park
  attr_reader :name, :price, :vehicles

  def initialize(name, price)
    @name = name
    @price = price
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def list_passengers
    @vehicles.flat_map do |vehicle|
      vehicle.passengers
    end
  end

#calculate_revenue
  def calculate_revenue
    revenue_val = 0
    # fix below code
    list_passengers.each do |passenger|
      if passenger.adult?
        @revenue += @price
      end
    end
    @revenue
  end

end

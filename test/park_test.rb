require'minitest/autorun'
require'minitest/pride'
require'./lib/passenger'
require'./lib/vehicle'
require'./lib/park'
require'pry'

class ParkTest < MiniTest::Test

  def setup
    @park = Park.new("Park", 10)
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @jude = Passenger.new({"name" => "Jude", "age" => 20})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

  def test_it_exists
    assert_instance_of Park, @park
  end

  def test_it_has_attributes
    assert_equal "Park", @park.name
    assert_equal 10, @park.price
  end

  def test_it_can_list_vehicles
    assert_equal [], @park.vehicles
    @park.add_vehicle(@vehicle)
    assert_equal [@vehicle], @park.vehicles
  end

  def test_it_can_list_passengers
    @park.add_vehicle(@vehicle)
    @vehicle.add_passenger(@charlie)
    @vehicle.add_passenger(@jude)
    @vehicle.add_passenger(@taylor)
    assert_equal [@charlie, @jude, @taylor], @park.list_passengers
  end

  def test_it_can_calculate_revenue
    @park.add_vehicle(@vehicle)
    @vehicle.add_passenger(@charlie)
    @vehicle.add_passenger(@jude)
    @vehicle.add_passenger(@taylor)
    assert_equal 20, @park.revenue
  end

end

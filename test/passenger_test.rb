require'minitest/autorun'
require'minitest/pride'
require'./lib/passenger'
require'pry'

class PassengerTest < MiniTest::Test

  def setup
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

  def test_it_exists
    assert_instance_of Passenger, @charlie
  end

  def test_it_initializes_name_and_age
    # skip
    assert_equal "Charlie", @charlie.name
    assert_equal 18, @charlie.age
  end

  def test_it_can_tell_us_if_adult?
    # skip
    assert_equal true, @charlie.adult?
    assert_equal false, @taylor.adult?
  end

  def test_it_can_tell_us_if_driver?
    # skip
    assert_equal false, @charlie.driver?
    @charlie.drive
    assert_equal true, @charlie.driver?
  end

end

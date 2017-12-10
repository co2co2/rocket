require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!
  def setup
    @rocket = Rocket.new
  end

  def test_initialize_name_option
    @rocket = Rocket.new(name: "coco")
    assert_equal "coco" , @rocket.name
  end

  def test_initialize_name_random
    random_name = @rocket.name
    assert random_name
  end

  def test_name=
    @rocket.name= ("Sailor Moon")
    assert_equal "Sailor Moon", @rocket.name
  end

  def test_colour
    @rocket.colour
    assert true
  end

  def test_colour_writter
    @rocket.colour= ("yellow")
    assert_equal "yellow", @rocket.colour
  end

  def test_rocket_not_flying_initially
    expected = false
    actual =  @rocket.flying?
    assert_equal expected, actual
  end

  def test_before_lift_off
    result = @rocket.flying?
    refute result
  end

  def test_after_lift_off
    @rocket = Rocket.new(flying: true)
    refute  @rocket.lift_off
  end

  def test_land_suceed
    expected = @flying == false
    actual = @rocket.land
    assert_equal expected, actual
  end
  #
  def test_not_land
    @flying = true
    refute @rocket.land
  end

  def test_flying_status
    @rocket = Rocket.new(name: "coco", flying: true)
    expected = "Rocket coco is flying through the sky!"
    actual = @rocket.status
    assert_equal expected, actual
  end

  def test_ready_for_lift_off_status
    expected = "Rocket #{@rocket.name} is ready for lift off!"
    actual = @rocket.status
    assert_equal expected, actual
  end














end

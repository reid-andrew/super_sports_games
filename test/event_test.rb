require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'
require './lib/standard_deviation'

class EventTest < Minitest::Test

  def setup
    @event = Event.new("Curling", [18, 20, 45, 68, 19, 46])
    @event2 = Event.new("Hockey", [44, 28, 66, 46, 72, 19, 23, 23, 38])
  end

  def test_it_exists
    # skip
    assert_instance_of Event, @event
    assert_instance_of Event, @event2
  end

  def test_it_has_a_name
    # skip
    assert_equal "Curling", @event.name
    assert_equal "Hockey", @event2.name
  end

  def test_it_has_ages
    # skip
    assert_equal [18, 20, 45, 68, 19, 46], @event.ages
    assert_equal [44, 28, 66, 46, 72, 19, 23, 23, 38], @event2.ages
  end

  def test_it_returns_max_age
    # skip
    assert_equal 68, @event.max_age
    assert_equal 72, @event2.max_age
  end

  def test_it_returns_min_age
    # skip
    assert_equal 18, @event.min_age
    assert_equal 19, @event2.min_age
  end

  def test_it_returns_avg_age
    # skip
    assert_equal 36.00, @event.average_age
    assert_equal 39.89, @event2.average_age
  end

  def test_it_returns_standard_deviation
    # skip
    assert_equal 18.59, @event.standard_deviation_age
    assert_equal 18.01, @event2.standard_deviation_age
  end
end

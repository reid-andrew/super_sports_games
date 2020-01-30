require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'

class EventTest < Minitest::Test

  def setup
    @event = Event.new("Curling", [18, 20, 45, 68, 19, 46])
  end

  def test_it_exists
    skip
    assert_instance_of Event, @event
  end

  def test_it_has_a_name
    skip
    assert_equal "Curling", @event.name
  end

  def test_it_has_ages
    skip
    assert_equal [18, 20, 45, 68, 19, 46], @event.ages
  end

  def test_it_returns_max_age
    # skip
    assert_equal 68, @event.max_age
  end

  def test_it_returns_min_age
    # skip
    assert_equal 18, @event.min_age
  end
end

require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'

class EventTest < Minitest::Test

  def setup
    @event = Event.new("Curling", [18, 20, 45, 68, 19, 46])
  end

  def test_it_exists
    assert_instance_of Event, @event
  end

end

class Event
  attr_reader :event_name, :participant_ages

  def initialize(event_name, participant_ages)
    @event_name = event_name
    @participant_ages = participant_ages
  end

end

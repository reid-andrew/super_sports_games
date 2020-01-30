class Event
  attr_reader :name, :ages

  def initialize(event_name, participant_ages)
    @name = event_name
    @ages = participant_ages
  end

end

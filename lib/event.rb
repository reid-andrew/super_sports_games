class Event
  attr_reader :name, :ages

  def initialize(event_name, participant_ages)
    @name = event_name
    @ages = participant_ages
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    total_age = 0
    @ages.each do |age|
      total_age += age
    end

    total_age/@ages.count
  end

end

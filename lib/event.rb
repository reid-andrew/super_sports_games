class Event
  require './lib/standard_deviation'
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

    avg_age = total_age.to_f/@ages.count
    avg_age = avg_age.round(2)
    # require "pry"; binding.pry
  end

  def standard_deviation_age
    sd = Standard_Deviation.new(@ages)
    sd.standard_deviation
  end

end

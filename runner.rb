require './lib/standard_deviation'
require './lib/event'
require './lib/games'


puts "\n" + "Enter the year of the games"
print ">"
input_year = gets.chomp
new_game = Games.new(input_year)
# event_list = []

puts "\n" + "How many events were contested in #{input_year}?"
print ">"
event_count = gets.chomp.to_i
counter = 0

while counter < event_count
  event_ages = []
  puts "Enter event number #{counter + 1}"
  print ">"
  input_event = gets.chomp
  puts "How many people participated in #{input_event}?"
  print ">"
  participant_count = gets.chomp.to_i
  p_counter = 0
  while p_counter < participant_count
    puts "What was the age of participant #{p_counter + 1}"
    print ">"
    age_input = gets.chomp.to_i
    event_ages << age_input
    p_counter += 1
  end

  new_event = Event.new(input_event, event_ages)
  new_game.add_event(new_event)
  # event_list << input_event
  counter += 1
end

puts "\n"
puts "---------------------------------------------"
puts "Summary of All Events Contested"
puts new_game.headers
puts new_game.all_events_summary
puts "\n" + "\n" + "\n" + "\n"

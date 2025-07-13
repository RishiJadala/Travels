# jammikunta.rb

class JammikuntaTrip
  def initialize
    @town = "Jammikunta"
    @attractions = [
      "Sri Venkateswara Temple",
      "Kaleshwara Mukteshwara Swamy Temple (nearby)",
      "Local Markets",
      "Agricultural Fields & Rural Experience"
    ]
  end

  def welcome_message
    puts "Welcome to #{@town}!"
    puts "A charming town in Telangana, #{@town} offers a glimpse into rural Indian life and culture."
  end

  def list_attractions
    puts "\nPlaces to explore in and around #{@town}:"
    @attractions.each_with_index do |place, index|
      puts "#{index + 1}. #{place}"
    end
  end

  def trip_plan(days)
    puts "\nYour #{days}-day trip plan for #{@town}:"
    if days >= @attractions.length
      puts "You have enough days to explore all key spots in and around #{@town}!"
    else
      puts "Recommended attractions for #{days} days:"
      @attractions.first(days).each do |place|
        puts "- Visit #{place}"
      end
    end
    puts "Don't miss trying authentic Telangana cuisine, like Pachi Pulusu or Jonna Rotte!"
  end
end

# Create and use the JammikuntaTrip class
trip = JammikuntaTrip.new
trip.welcome_message
trip.list_attractions
trip.trip_plan(2)

# varanasi.rb

class VaranasiTrip
  def initialize
    @city = "Varanasi"
    @attractions = [
      "Kashi Vishwanath Temple",
      "Dashashwamedh Ghat",
      "Sarnath",
      "Manikarnika Ghat",
      "Assi Ghat"
    ]
  end

  def welcome_message
    puts "Welcome to #{@city}!"
    puts "Known as the spiritual capital of India, #{@city} is a city of ancient temples and sacred ghats."
  end

  def list_attractions
    puts "\nTop places to visit in #{@city}:"
    @attractions.each_with_index do |place, index|
      puts "#{index + 1}. #{place}"
    end
  end

  def trip_plan(days)
    puts "\nYour #{days}-day trip plan for #{@city}:"
    if days >= @attractions.length
      puts "You have enough days to visit all major attractions!"
    else
      puts "Recommended attractions for #{days} days:"
      @attractions.first(days).each do |place|
        puts "- Visit #{place}"
      end
    end
    puts "Don't miss experiencing the Ganga Aarti at the ghats!"
  end
end

# Create and use the VaranasiTrip class
trip = VaranasiTrip.new
trip.welcome_message
trip.list_attractions
trip.trip_plan(3)

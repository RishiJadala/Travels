# hyderabad_trip.rb

class HyderabadTrip
  def initialize
    @city = "Hyderabad"
    @attractions = [
      "Charminar",
      "Golconda Fort",
      "Hussain Sagar Lake",
      "Birla Mandir",
      "Ramoji Film City"
    ]
  end

  def welcome_message
    puts "Welcome to #{@city}!"
    puts "Known as the City of Pearls, #{@city} is a blend of history and modernity."
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
    puts "Don't miss trying the famous Hyderabadi Biryani!"
  end
end

# Create and use the HyderabadTrip class
trip = HyderabadTrip.new
trip.welcome_message
trip.list_attractions
trip.trip_plan(3)end

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
    puts "Don't miss trying the famous Hyderabadi Biryani!"
  end
end

# Create and use the HyderabadTrip class
trip = HyderabadTrip.new
trip.welcome_message
trip.list_attractions
trip.trip_plan(3)

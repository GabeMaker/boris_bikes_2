require_relative 'docking_station'

class Van

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def get_bikes_from(place)
    place.unload_bikes.each { |bike| bikes << bike }
  end

  def give_fixed_bikes_to(place)
    bikes.each do |bike|
      if bike.working?
        place.bikes << bike
        bikes.delete bike
      end
    end
    @bikes
  end

  def give_broken_bikes_to(place)
    bikes.each do |bike|
      if bike.working? == false
        place.bikes << bike
        bikes.delete bike
      end
    end
    @bikes
  end

end

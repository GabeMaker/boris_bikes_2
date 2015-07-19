class Garage

  def initialize
    @bikes = []
  end

  def fix_bikes
    bikes.each { |bike | bike.fix! }
  end

  def dock bike
    bikes << bike
  end

  def release_bikes
    working_bikes = bikes.select { |bike| bike.working? }
    bikes.delete_if { |bike| bike.working? }
    working_bikes
  end

  attr_reader :bikes

end
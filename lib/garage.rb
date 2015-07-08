class Garage

  def initialize
    @bikes = []
  end

  def fix_bikes
  end

  def dock bike
    bikes << bike
  end

  private

  attr_reader :bikes

end
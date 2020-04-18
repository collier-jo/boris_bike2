require './lib/bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    @bikes.pop unless empty?
  end
  
  def dock_bike(bike)
    @bikes << bike unless full?
  end

  private

  def full?
    fail "The docking station is full." if @bikes.length >= 20
  end

  def empty?
    fail "There are no bikes in this docking station." if @bikes.empty?
  end 
end

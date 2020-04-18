require './lib/bike'

class DockingStation

  attr_reader :bikes, :capacity

  def initialize(capacity = 20)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    @bikes.pop unless empty?
  end
  
  def dock_bike(bike)
    @bikes << bike unless full?
  end

  private

  def full?
    fail "The docking station is full." if @bikes.length >= @capacity
  end 

  def empty?
    fail "There are no bikes in this docking station." if @bikes.empty?
  end 
end

require 'docking_station'

describe DockingStation do
  it 'release bike from docking station' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end 
end

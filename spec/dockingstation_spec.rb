require 'dockingstation.rb'
describe DockingStation do
  it 'expects DockingStation instances to respond_to the method release_bike' do
  respond_to = DockingStation.new
  respond_to.release_bike
end
  
end
require "dockingstation"

# describe DockingStation do
#   it "DockingStation instances to respond_to the method release_bike" do
#     docking_station = DockingStation.new
#     expect(docking_station).to respond_to(:release_bike)
#   end
# end

# one-liner syntax
describe DockingStation do
  it { is_expected.to respond_to :release_bike }
end

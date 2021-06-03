require "./lib/dockingstation"

class Bike
  def working?
  end
end

bike1 = Bike.new
bike2 = Bike.new
docking1 = DockingStation.new

# p docking1.dock(bike1)
# p docking1.dock(bike2)

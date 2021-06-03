require "./lib/dockingstation"

class Bike
  def initialize
    @broken = "unknown"
  end

  def working?
    return false if @broken == "broken"
  end

  def report(status)
    @broken = status
  end
end

bike1 = Bike.new
bike2 = Bike.new
docking1 = DockingStation.new

# p docking1.dock(bike1)
# p docking1.dock(bike2)

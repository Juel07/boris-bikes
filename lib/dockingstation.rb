class DockingStation
  attr_reader :bike, :docker

  def initialize
    @docker = []
  end

  def release_bike
    empty? ? (raise "Error") : "false"
  end

  def dock(bike)
    full? ? (@docker << bike) : (raise "Capacity full")
  end

  private

  def full?
    @docker.length < 20
  end

  def empty?
    @docker.empty?
  end
end

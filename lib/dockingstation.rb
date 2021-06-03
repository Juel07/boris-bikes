class DockingStation
  attr_reader :bike, :docker

  def initialize(capacity = 20)
    @docker = []
    @capacity = capacity
  end

  def release_bike
    empty? ? (raise "Error") : "false"
  end

  def dock(bike)
    full? ? (@docker << bike) : (raise "Capacity full")
  end

  def capacity
    @capacity
  end

  private

  def full?
    @docker.length < @capacity
  end

  def empty?
    @docker.empty?
  end
end

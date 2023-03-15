class Wheel
  attr_accessor :rim, :tire

  def initialize(rim, tire)
    @rim = rim
    @tire = tire
  end

  def diameter
    rim + (tire * 2)
  end

  @wheel = Wheel.new(26, 1.5)
end

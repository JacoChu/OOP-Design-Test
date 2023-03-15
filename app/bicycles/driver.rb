class Driver
  def prepare_trip(trip)
    vehicle = trip.vehicle
    gas_up(vehicle)
    fill_water_tank(vehicle)
  end

  def gas_up(veicle)
    "加滿 #{veicle} 的油箱"
  end

  def fill_water_tank(veicle)
    "加滿 #{veicle} 的水箱"
  end
end
class TripCoordinator
  def prepare_trip(trip)
    buy_food(trip.customers)
  end

  def buy_food(customer)
    "買牛排給 #{customer}"
  end
end
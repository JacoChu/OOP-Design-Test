require 'rails_helper'

RSpec.describe Bicycle do
  include BicycleInterfaceTest

  before do
    @object = Bicycle.new({ tire_size: 0 })
    @bike = @object
  end

  it 'implements the bicycle_interface' do
    test_implements_the_bicycle_interface
  end

  #9.6.3

  before do
    @object = Bicycle.new({ tire_size: 0 })
    @bike = @object
    @stubbed_bike = StubbedBike.new
  end

  it 'include local spares in spares' do
    expect(@stubbed_bike.spares).to eq({ tire_size: 0, chain: '10-speed', saddle: 'painful' })
  end
end

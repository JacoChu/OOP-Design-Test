require 'rails_helper'

RSpec.describe RoadBike do
  include BicycleInterfaceTest
  include BicycleSubclassTest

  before do
    @object = RoadBike.new
  end

  it 'implements the bicycle_interface' do
    test_implements_the_bicycle_interface
  end

  it 'implements the bicycle_subclass' do
    test_implements_the_bicycle_interface
  end

  #9.6.3 測試獨特行為

  before do
    @object = RoadBike.new(tape_color: 'red')
  end

  it 'roadbike tape color is red' do
    expect(@object.local_spares[:tape_color]).to eq('red')
  end
end


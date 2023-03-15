require 'rails_helper'

RSpec.describe Mechanic do
  include PreparerInterfaceTest

  before do
    @mechanic = Mechanic.new
    @object = @mechanic
  end

  describe '#prepare_trip' do
    it 'implements the prepare interface' do
      test_implements_the_preparer_interface
    end
  end
end
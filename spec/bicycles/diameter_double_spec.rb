require 'rails_helper'

RSpec.describe DiameterDouble do
  include DiameterizableInterfaceTest

  before { @object = DiameterDouble.new }

  describe '#width' do
    it 'implements the diameterizable interface' do
      test_implements_diameterizable_interface
    end
  end
end

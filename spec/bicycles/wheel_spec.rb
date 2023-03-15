require 'rails_helper'

RSpec.describe Wheel do
  describe '#diameter' do
    let(:wheel) { Wheel.new(26, 1.5) }

    fit 'calculates diameter' do
      expect(wheel.diameter).to be_within(0.01).of(29)
    end

    it 'initializes the diameterizable interface' do
      expect(wheel).to respond_to(:diameter)
    end
  end

  describe '#width' do
    include DiameterizableInterfaceTest
    before do
      @object = Wheel.new(26, 1.5)
    end

    #9.5.2使用角色測試驗證替身

    it 'implements the diameterizable interface' do
      test_implements_diameterizable_interface
    end
  end
end

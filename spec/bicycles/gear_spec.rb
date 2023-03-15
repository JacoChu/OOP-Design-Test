require 'rails_helper'

RSpec.describe Gear do
  describe '#gear_inches' do

    it 'Calculates gear inches' do
      gear = Gear.new(chainring: 52, cog: 11, rim: 26, tire: 1.5)
      expect(gear.gear_inches).to be_within(0.01).of(137.1)
    end

    it 'Use dependency injection calculates gear inches' do
      gear = Gear.new(chainring: 52,
                      cog: 11,
                      wheel: Wheel.new(26, 1.5))

      expect(gear.gear_inches).to be_within(0.01).of(137.1)
    end

    fit 'DiameterDouble calculates gear inches' do
      gear = Gear.new(chainring: 52,
                      cog: 11,
                      wheel: DiameterDouble.new
                      )

      expect(gear.gear_inches).to be_within(0.01).of(47.27)
    end

    # 9.4 Object Value 變更時，使用 mock 去確認物件是否正確做了改動
    let(:observer) { instance_double('Observer') }
    let(:gear) do
      Gear.new(
        chainring: 52,
        cog: 11,
        observer: observer
      )
    end

    before do
      allow(observer).to receive(:changed)
    end

    it 'notifies observers when cogs change' do
      gear.set_cog(27)
      expect(observer).to have_received(:changed).with(52, 27)
    end

    it 'notifies observers when chainrings change' do
      gear.set_chainring(42)
      expect(observer).to have_received(:changed).with(42, 11)
    end
  end
end

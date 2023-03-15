require 'rails_helper'

RSpec.describe Trip do
  describe '#prepare' do
    it 'requests trip preparation' do
      preparer = double('preparer')
      # double 用於類別方法ex: self.xxx
      trip = Trip.new

      allow(preparer).to receive(:prepare_trip).with(trip)
      trip.prepare([preparer])
      expect(preparer).to have_received(:prepare_trip).with(trip)
    end
  end
end

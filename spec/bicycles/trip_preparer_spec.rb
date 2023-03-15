require 'rails_helper'
# https://ithelp.ithome.com.tw/articles/10290715
RSpec.shared_examples_for 'a trip preparer' do
  let(:object) { described_class.new }

  it 'implements the preparer interface' do
    expect(object).to respond_to(:prepare_trip)
  end
end

RSpec.describe Mechanic do
  it_behaves_like 'a trip preparer'
end

RSpec.describe TripCoordinator do
  it_behaves_like 'a trip preparer'
end

RSpec.describe Driver do
  it_behaves_like 'a trip preparer'
end

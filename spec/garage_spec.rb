require 'garage'

# helper method
class Garage
  attr_reader :bikes
end

describe Garage do

  it { is_expected.to respond_to :fix_bikes }

  it 'it can accept bikes' do
    bike = double :bike
    subject.dock bike
    expect(subject.bikes).to eq [bike]
  end

end
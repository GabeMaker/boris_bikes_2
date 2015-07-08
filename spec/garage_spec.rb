require 'garage'

# helper method
class Garage
  attr_reader :bikes
end

describe Garage do

  it { is_expected.to respond_to :fix_bikes }

  it 'can accept bikes' do
    bike = double :bike
    bike2 = double :bike
    subject.dock bike
    subject.dock bike2
    expect(subject.bikes).to eq [bike, bike2]
  end

  xit 'can fix broken bikes' do
    bike = double :bike, working?: false
    bike2 = double :bike, working?: false
    subject.dock bike
    subject.dock bike2
    subject.fix_bikes
    expect(bike).to receive(:fix!)
    expect(bike2).to receive(:fix!)
  end

end
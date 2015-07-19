require 'garage'

# helper method
class Garage
  attr_reader :bikes
end

describe Garage do

  it { is_expected.to respond_to :fix_bikes }
  it { is_expected.to respond_to :release_bikes }

  it 'can accept bikes' do
    bike = double :bike
    bike2 = double :bike
    subject.dock bike
    subject.dock bike2
    expect(subject.bikes).to eq [bike, bike2]
  end

  it 'can fix broken bikes' do
    bike = double :bike, working?: false
    bike2 = double :bike, working?: false
    expect(bike).to receive(:fix!)
    expect(bike2).to receive(:fix!)
    subject.dock bike
    subject.dock bike2
    subject.fix_bikes
  end

  it 'can release fixed bikes (to van)' do
    bike = double :bike, working?: true
    bike2 = double :bike2, working?: true
    broken_bike = double :bike, working?: false
    subject.dock bike
    subject.dock bike2
    subject.dock broken_bike
    released_bikes = subject.release_bikes
    expect(released_bikes).to include bike
    expect(released_bikes).to include bike2
    expect(subject.release_bikes).to eq []
  end

end
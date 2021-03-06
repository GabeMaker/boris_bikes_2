require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to :unload_bikes }

  it 'should release a bike' do
    subject.dock Bike.new
    expect(subject.release_bike).to be_a Bike
  end

  it 'should release a working bike' do
    bike = double :bike, working?: true
    subject.dock bike
    expect(subject.release_bike).to be bike
  end

  it 'should not release a broken bike' do
    bike = double :bike, working?: false
    subject.dock bike
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  describe 'release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe 'dock' do
    it 'raises an error when full' do
      subject.capacity.times { subject.dock double :bike }
      expect { subject.dock double :bike }.to raise_error 'Docking station full'
    end
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it 'can specify a larger capacity' do
    subject.capacity = 30
    expect(subject.capacity).to eq 30
  end


  describe 'release_broken_bikes' do
    it 'releases broken bikes (to van)' do
      bike = double :bike, working?: true
      broken_bike = double :bbike1, working?: false
      broken_bike2 = double :bbike2, working?: false
      subject.dock bike
      subject.dock broken_bike
      subject.dock broken_bike2
      released_bikes = subject.unload_bikes
      expect(released_bikes).to include broken_bike
      expect(released_bikes).to include broken_bike2
      expect(subject.unload_bikes).to eq []
    end
  end
end
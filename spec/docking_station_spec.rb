require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it 'should relase a bike' do
    expect(subject.release_bike).to be_a Bike
  end

  it 'should release a working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

end


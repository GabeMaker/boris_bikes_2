require 'van'

describe Van do

  it { is_expected.to respond_to(:get_bikes_from).with(1).argument }

  it 'should be able to take broken bikes from a docking station' do
    broken_bike = double :broken_bike, working?: false
    station = double :station, release_broken_bikes: broken_bike
    subject.get_bikes_from(station)
    expect(subject.bikes).to eq [broken_bike]
  end

  it 'can give broken bikes to a garage' do
    broken_bike = double :broken_bike, working?: false
    station = double :station, release_broken_bikes: broken_bike
    subject.get_bikes_from(station)
    garage = double :garage, bikes: []
    subject.give_bikes_to(garage)
    expect(subject.bikes).to eq []
    expect(garage.bikes).to eq [broken_bike]
  end
end
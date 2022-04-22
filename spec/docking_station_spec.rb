require 'docking_station'

describe DockingStation do
  it { expect(subject).to respond_to :release_bike }

  it 'releases working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
 
  it 'dock bike at docking station' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'is there a bike at the docking station' do
    bike = Bike.new
    subject.dock(bike) 
    expect(subject.bike).to eq bike
  end

  describe '#release_bikes' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)

      expect(subject.release_bike).to eq bike
    end
  end

end
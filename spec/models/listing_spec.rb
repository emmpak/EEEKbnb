describe Listing do
  describe '#unavailable_dates' do
    it('lists unavalable dates for a particular listing') do
      create_user
      create_listing
      create_booking
      expect(Listing.first.unavailable_dates).to eq([Date.new(2017,4,20), Date.new(2017,4,21), Date.new(2017,4,22)])
    end
  end
end

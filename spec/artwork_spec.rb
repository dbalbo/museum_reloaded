require('spec_helper')


describe(Artwork)  do
	describe('.all') do
		it ('is empty at first') do
			artwork = Artwork.new({:description => "Circles", :museum_id => nil, :id => nil})
			expect(Artwork.all).to(eq([]))
		end
	end

	describe('#save') do
		it('saves a list of artworks into an array') do
			test_artwork = Artwork.new({:description => "Circles", :museum_id => 1, :id => nil})
			test_artwork.save
			expect(Artwork.all).to(eq([test_artwork]))
		end
	end
	describe('#==') do
    it('is the same list if it has the same name') do
      test_artwork1 = Artwork.new({:description => 'Circles', :museum_id => nil, :id => nil})
      test_artwork2 = Artwork.new({:description => 'Circles', :museum_id => nil, :id => nil})
      expect(test_artwork1).to(eq(test_artwork2))
    end
  end
end
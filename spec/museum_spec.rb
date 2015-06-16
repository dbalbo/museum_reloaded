require('spec_helper')

describe(Museum) do
	describe('.all') do
		it('is empty at first') do
			test_museum = Museum.new({:name => 'The Guggenheim', :id => nil})
			expect(Museum.all).to(eq([]))
		end
	end

	describe('#==') do
		it('is the same museum if it has the same name') do
			test_museum1 = Museum.new({:name => "The Guggenheim", :id => nil})
			test_museum2 = Museum.new({:name => "The Guggenheim", :id => nil})
			expect(test_museum1).to(eq(test_museum2))
		end
	end
	describe('#save') do
		it('saves a list of museums in an array') do
			test_museum = Museum.new({:name => "The Guggenheim", :id => 1})
			test_museum.save
			expect(Museum.all).to(eq([test_museum]))
		end
	end

	describe('.find') do
		it('returns a museum by its id') do
			test_museum = Museum.new({:name => "The Guggenheim", :id => nil})
			test_museum.save
			test_museum2 = Museum.new({:name => "The Met", :id => nil})
			test_museum2.save
			expect(Museum.find(test_museum.id)).to(eq(test_museum))
		end
	end

	describe('#artworks') do
		it('returns an array of artworks for a musuem') do
			test_museum = Museum.new({:name => "The Guggenheim", :id => 1})
			test_museum.save
			test_artwork = Artwork.new(:description => "Circles", :museum_id => test_museum.id, :id => 1)
			test_artwork.save
			test_artwork2 = Artwork.new(:description => "Sunflowers", :museum_id => test_museum.id, :id => 1)
			test_artwork2.save
			expect(test_museum.artworks).to(eq([test_artwork, test_artwork2]))
		end
	end
end


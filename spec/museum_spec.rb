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

	 describe('#update') do
    it('lets you update a museum in the database') do
      museum = Museum.new({:name => "The Guggenheim",  :id => nil})
      museum.save
      museum.update({:name => "The Met"})
      expect(museum.name).to(eq('The Met'))
    end
  end

    describe('#delete') do
  it('lets you delete a museum from the database') do
    museum = Museum.new({:name => 'White House', :id => nil})
    museum.save
    museum2 = Museum.new({:name => 'House Stuff', :id => nil})
    museum2.save
    museum.delete
    expect(Museum.all).to(eq([museum2]))
  end

  it("deletes a museum's artworks from the database") do
    museum = Museum.new({:name => 'White House', :id => nil})
    museum.save
    artwork = Artwork.new({:description => 'bottle cap', :museum_id => museum.id, :id => nil})
    artwork.save
    artwork2 = Artwork.new({:description => "melted icecube", :museum_id => museum.id, :id => nil})
    artwork2.save
    museum.delete
    expect(Artwork.all).to(eq([]))
    end
  end
end


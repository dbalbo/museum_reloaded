require('spec_helper')

describe(Museum) do
	describe('.all') do
		it('is ampty at first') do
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
end
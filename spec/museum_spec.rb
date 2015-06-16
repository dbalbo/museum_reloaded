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
end
require('spec_helper')

describe(Museum) do
	describe('.all') do
		it('is ampty at first') do
			test_museum = Museum.new({:name => 'The Guggenheim', :id => nil})
			expect(Museum.all).to(eq([]))
		end
	end
end
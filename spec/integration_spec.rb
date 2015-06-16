
require('capybara/rspec')
require('./app')
require('spec_helper')
Capybara.app == Sinatra::Application
set(:show_exceptions, false)


describe('the add a museum path') do
  it('adds a new museum to the list of museums') do
    visit('/')
    fill_in('Add a Museum to the National Database', :with => "The Guggenheim" )
    click_button("Add Museum")
    expect(page).to have_content("The Guggenheim")
  end
end

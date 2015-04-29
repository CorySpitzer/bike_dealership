require('capybara/rspec')
# require('./lib/dealership')
# require('lib/vehicle')
require('./app')
Capybara.app = Sinatra::Application

describe('the dealership app', {:type => :feature}) do
  describe('the root path') do
    it('displays dealership index page') do
      visit('/')
      expect(page).to(have_content('Bike Dealerships'))
    end
  end
end

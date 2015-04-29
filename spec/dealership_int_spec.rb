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

  describe('new dealership form and dealership list page') do
    it('adds dealership from form then lists dealerships') do
      visit('/')
      click_link('New Dealerships')
      expect(page).to(have_content('Add New Dealership'))
      fill_in('dealer-name', :with => 'Velo Cult')
      click_button('Add New Dealership')
      click_link('Back to main page.')
      click_link('Dealerships')
      expect(page).to(have_content('Velo Cult'))
    end
  end

  describe('vehicle id path') do
    it('displays a vehicle page by id') do
      visit('/vehicles/1')
      bike = Vehicle.new('M', 'M', 2015)
      expect(page).to(have_content('2015'))
    end
  end

end


describe('')

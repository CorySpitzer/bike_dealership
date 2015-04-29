require('rspec')
require('vehicle')
require('dealership')

describe(Dealership) do
  before() do
    Dealership.clear()
  end

  describe('#name') do
    it('returns the name of the dealership') do
      test_dealership = Dealership.new('Bike Shop')
      expect(test_dealership.name()).to(eq('Bike Shop'))
    end

  end
end

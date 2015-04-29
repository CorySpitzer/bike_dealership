require('rspec')
require('vehicle')

describe(Vehicle) do
  before() do
    Vehicle.clear()
  end

  describe('#make') do
    it('returns the model of the vehicle') do
      test_vehicle = Vehicle.new('Specialized', 'Sirrus', 2000)
      test_vehicle.save()
      expect(test_vehicle.make()).to(eq('Specialized'))
    end
  end
end

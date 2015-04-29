require('rspec')
require('vehicle')

describe(Vehicle) do
  before() do
    Vehicle.clear()
  end

  describe("#save") do
    it("adds a bicycle to the array of saved bicycles") do
      test_vehicle = Vehicle.new("Specialized", "Sirrus", 2000)
      test_vehicle.save()
      expect(Vehicle.all()).to(eq([test_vehicle]))
    end
  end


  describe('#make') do
    it('returns the make of the bicycle') do
      test_vehicle = Vehicle.new('Specialized', 'Sirrus', 2000)
      test_vehicle.save()
      expect(test_vehicle.make()).to(eq('Specialized'))
    end
  end

  describe('#model') do
    it("returns the model of the bicycle") do
      test_vehicle = Vehicle.new("Specialized", "Sirrus", 2000)
      test_vehicle.save()
      expect(test_vehicle.model()).to(eq('Sirrus'))
    end
  end

  describe("#year") do
    it("returns the year of the bicycle") do
      test_vehicle = Vehicle.new("Specialized", "Sirrus", 2000)
      test_vehicle.save()
      expect(test_vehicle.year()).to(eq(2000))
    end
  end


end

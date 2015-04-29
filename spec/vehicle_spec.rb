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

  describe("#age") do
    it("returns the vehicles age") do
      test_vehicle = Vehicle.new("Specialized", "Sirrus", 2000)
      expect(test_vehicle.age()).to(eq(15))
    end
  end

  describe("#worth_buying?") do
    it("returns false if the bicycle is not American made and less than 15 years old") do
      test_vehicle = Vehicle.new("Specialized", "Sirrus", 2000)
      expect(test_vehicle.worth_buying?()).to(eq(false))
    end
  end

end

require('rspec')
require('vehicle')
require('dealership')

describe(Dealership) do
  before() do
    Dealership.clear()
  end

  describe('#name') do
    it('returns the name of the dealership') do
      test_dealership = Dealership.new('Velo Cult')
      expect(test_dealership.name()).to(eq('Velo Cult'))
    end
  end

  describe('#id') do
    it("returns the id of the dealership") do
      test_dealership = Dealership.new("Velo Cult")
      expect(test_dealership.id()).to(eq(1))
    end
  end

  describe('#bikes') do
    it('initially returns an empty array of bikes') do
      expect(Dealership.new('Velo Cult').bikes()).to(eq([]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Dealership.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("adds a dealership to the array of saved dealerships") do
      test_dealership = Dealership.new("Velo Cult")
      test_dealership.save()
      expect(Dealership.all()).to(eq([test_dealership]))
    end
  end

  describe(".clear") do
    it("empties out all the saved daelerships") do
      Dealership.new("Velo Cult").save()
      Dealership.clear()
      expect(Dealership.all()).to(eq([]))
    end
  end

  describe('.find') do
    it('returns a dealership by its id number') do
      dealership1 = Dealership.new('Velo Cult')
      dealership1.save()
      dealership2 = Dealership.new('Bike Farm')
      dealership2.save()
      expect(Dealership.find(dealership2.id())).to(eq(dealership2))
    end
  end

  describe('#add_bike') do
    it('adds a vehicle to a given dealership') do
      test_dealership = Dealership.new("Velo Cult")
      test_vehicle = Vehicle.new("Specialized", "Sirrus", 2000)
      test_dealership.add_bike(test_vehicle)
      expect(test_dealership.bikes()).to(eq([test_vehicle]))
    end
  end

end

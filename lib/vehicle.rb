class Vehicle

  @@vehicles = []

  attr_reader :year
  attr_reader :make
  attr_reader :model
  attr_reader :id

  define_method(:initialize) do |make, model, year|
    @make = make
    @model = model
    @year = year
    @id = @@vehicles.length()+1
  end

  define_method(:save) do
    @@vehicles.push(self)
  end

  define_singleton_method(:all) do
    @@vehicles
  end

  define_method(:save) do
    @@vehicles.push(self)
  end

  define_singleton_method(:clear) do
    @@vehicles = []
  end

  define_method(:worth_buying?) do
    american_bikes = ["Cannondale", "Trek", "Specialized"]
    american_bikes.include?(@make).&(self.age<(15))
  end

  define_method(:age) do
    current_year = Time.new().year()
    age = current_year.-(@year)
  end

  define_singleton_method(:find) do |id|
    @@vehicles.each() do |vehicle|
      if vehicle.id() == id
        return vehicle
      end
    end
  end

end

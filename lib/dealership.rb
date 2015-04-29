class Dealership

  attr_reader :name
  @@dealerships = []

  define_method(:initialize) do |name|
    @name = name
    @id = @@dealerships.length().+(1)
    @cars = []
  end

  define_singleton_method(:clear) do
    @@dealerships = []
  end
  
end

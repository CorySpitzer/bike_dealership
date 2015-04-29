class Dealership

  attr_reader :name
  attr_reader :id
  attr_reader :bikes
  @@dealerships = []


  define_method(:initialize) do |name|
    @name = name
    @id = @@dealerships.length().+(1)
    @bikes = []
  end

  define_singleton_method(:clear) do
    @@dealerships = []
  end


end

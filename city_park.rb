class CityPark
    #attr_reader :name, :num_trees
  
    def initialize(name, num_trees) 
      @name = name
      @num_trees = num_trees
    end
  end
  
  class Forest
    attr_reader :name, :num_trees
    
    def initialize(name, num_trees) 
      @name = name
      @num_trees = num_trees
    end
  end
  
  high_park = CityPark.new("High Park", 5000)
  durham_forest = Forest.new("Durham Forest", 125000)
  dufferin_park = CityPark.new("Dufferin Park", 2000)
  
  high_park.name # => "High Park"
  high_park.num_trees # => 5000
  durham_forest.name # => "Durham Forest" 
  durham_forest.num_trees # => 125000
  dufferin_park.num_trees # => 2000
  
class CatBreeds

attr_accessor :name, :origin, :description, :life_span, :affection_level, :shedding_level, :intelligence

@@all = []

#def initialize(name, origin, description, life_span, affection_level, shedding_level, intelligence)
#@name = name 
#@origin = origin
#@description = description
#@life_span = life_span
#@affection_level = affection_level
#@shedding_level = shedding_level
#@intelligence = intelligence
#end

#def initialize(name)
 #   @name = name
#end

#def name
 #   @name
#end

def initialize(hash)
    hash.each do |k,v|
      self.send(("#{k}="), v) if self.respond_to?("#{k}=")
      #binding.pry
     end
     save
  end
  
    def save
        @@all << self
    end

    def self.all
        @@all
    end

   def self.find_by_name(name)
      self.all.select do |breed|
           breed.name == name
       end
   end
end




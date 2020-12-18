class CatBreeds

attr_accessor :name, :origin, :temperament, :description, :life_span, :affection_level, :shedding_level, :intelligence

@@all = []

def initialize(hash)
    hash.each do |k,v|                                     #initialized using mass assignments 
      self.send(("#{k}="), v) if self.respond_to?("#{k}=") #used send method to create instance variables
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

   def self.find_by_name(name)    #this class method takes in name, seraches @@all array & selects breed which name matches name passed in. 
      self.all.select do |breed|
           breed.name.downcase == name
       end
   end
end




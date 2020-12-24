class CatBreeds

attr_accessor :name, :origin, :temperament, :description, :life_span, :affection_level, :shedding_level, :intelligence

@@all = []

def initialize(hash)
    hash.each do |k,v|                                     
      self.send(("#{k}="), v) if self.respond_to?("#{k}=") 
      #binding.pry
     end
     save
  end
  
    def save
        self.class.all << self
    end

    def self.all
        @@all
    end

   def self.find_by_name(name)    
      self.all.detect do |breed|
           breed.name.downcase == name
       end
   end

   def self.unaffectionate_cats 
     CatBreeds.all.select do |breed|
       breed.affection_level < 5 
    end 
   end

   def self.uk_origin
    #this method will return all of the cat breeds who have an origin of United Kingdon
    CatBreeds.all.select do |breed|
      breed.origin == "United Kingdom"
    end
   end

   def self.by_origin(origin)
        #this method will return all of the cat breeds who have an origin that is passed in as an argument
        # CatBreeds.by_origin("United States")
        CatBreeds.all.select do |breed|
         breed.origin == "#{origin}"
        end
        
   end

end



class Follower

    attr_accessor :age, :life_moto, :cult
    attr_reader :name

    @@all = []

    def initialize(name, age, life_moto)
        @name = name
        @age = age
        @life_moto = life_moto
        @@all << self
    end

   def self.all
        @@all
   end
   
    def all_oaths
        BloodOath.all.select {|oath| oath.follower == self}
    end

    def cults
        self.all_oaths.map {|oath| oath.cult}
    end

    def join_cult(cult_inst)
        cult_inst.recruit_follower(self)
    end

    def self.of_a_certain_age(integer)
       generation = @@all.select {|f| f.age == integer} if generation.length > 0
    end

    def my_cult_slogans
        self.cults.map {|cult| cult.slogan}
    end


end
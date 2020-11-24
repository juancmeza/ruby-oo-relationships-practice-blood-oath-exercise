class Cult

    attr_accessor :location, :slogan, :follower
    attr_reader :name, :founding_year

    @@all = []
    
    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def self.all
        @@all
    end

    def all_oaths
        BloodOath.all.select {|oath| oath.cult == self}
    end

    def all_followers
        self.all_oaths.map {|oath| oath.follower}
    end

    def recruit_follower(follower_inst)
        new_follow = BloodOath.new(Time.now.strftime("%Y-%m-%d").to_s, self, follower_inst)
    end

    def cult_population
        self.all_followers.length
    end

    def self.find_by_name(name_of_cult)
        @@all.select {|cult| cult.name == name_of_cult}
    end

    def self.find_by_location(location)
        @@all.select {|cult| cult.location == name_of_cult}
    end

    def self.find_by_founding_year(year)
        @@all.select {|cult| cult.founding_year == year}
    end

    def average_age
        age_sum = self.all_followers.sum{|f| f.age}.to_f
        num_followers = self.cult_population.to_f
        average_age = age_sum/num_followers
    end

    def my_followers_motos
        self.all_followers.map {|f| f.life_moto}
    end

    def self.least_popular
        @@all.map{|cult| cult.cult_population}.min
    end

    def self.most_common_location
        locs = @@all.map{|cult| cult.location}
        uniq_locs = locs.uniq
        counts = []
        uniq_locs.each do |loc|
            count = 0
            count = locs.count(loc)
            counts << count
        end
        maxim = counts.max
        max_index = counts.index(maxim)
        uniq_locs[max_index]

    end

end

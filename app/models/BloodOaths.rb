class BloodOath

    attr_accessor :cult, :follower
    attr_reader :date

    @@all = []

    def initialize(date, cult, follower)
        @date = date
        @cult = cult
        @follower = follower
        @@all << self
    end

    def self.all
        @@all
    end

    def initiation_date
        self.date
    end

end




require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

hunter = Follower.new("Hunter", 26, "Long live the Greateful Dead")
dave = Follower.new("Dave", 27, "Let's go!")
alena = Follower.new("Alena", 23, "Let's do it!")
juan = Follower.new("Juan", 31, "Blah")

c1 = Cult.new("Grateful for the Grateful Dead", "SF", 2019, "Grateful Dead for life!")
c2 = Cult.new("San Francisco People", "SF", 2010, "SF for life!")
c3 = Cult.new("Seattle People", "Seattle", 2015, "Seattle for life!")
c4 = Cult.new("Flatiron People", "West Coast", 2020, "CodeSweats is the best cohort ever!")

bo1 = BloodOath.new(Time.now.strftime("%Y-%m-%d"), c1, hunter)
bo2 = BloodOath.new(Time.now.strftime("%Y-%m-%d"), c2, hunter)
bo3 = BloodOath.new(Time.now.strftime("%Y-%m-%d"), c4, hunter)
bo4 = BloodOath.new(Time.now.strftime("%Y-%m-%d"), c3, dave)
bo5 = BloodOath.new(Time.now.strftime("%Y-%m-%d"), c4, dave)
bo6 = BloodOath.new(Time.now.strftime("%Y-%m-%d"), c3, alena)
bo7 = BloodOath.new(Time.now.strftime("%Y-%m-%d"), c4, alena)
bo8 = BloodOath.new(Time.now.strftime("%Y-%m-%d"), c2, juan)
bo9 = BloodOath.new(Time.now.strftime("%Y-%m-%d"), c4, juan)

c1.recruit_follower(juan)




binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits

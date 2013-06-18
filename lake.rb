# encoding: utf-8

module Flying
  def fly; 'flying' end
end

module Quacking
  def quack; 'quacking' end
end

module Swimming
  def swim; 'swimming' end
end

module Eating
  def eat; 'eating' end
end

module Shooting
  def shoot; 'shooting' end
end

module Photograph
  def photograph; 'taking picture' end
end

class Duck
  def fly; "can't fly" end
  def swim; "can't swim" end
  def quack; "can't quack" end
  def eat; "can't eat" end
  def shoot; "can't shoot" end
  def photograph; "can't take pictures" end
end

class RealDuck < Duck
  include Quacking
  include Swimming
  include Flying
  include Eating
end

class RubberDuck < Duck
  include Quacking
  include Swimming
end

class WoodDuck < Duck
  include Swimming
end

class SpyDuck < Duck
  include Quacking
  include Swimming
  include Flying
  include Eating
  include Photograph
end

class TerminatorDuck < Duck
  include Shooting

  def quack
    phrase = Random.rand(3)

    if phrase == 0
      "says \"I need your clothes, your boots and your motorcycle...\""
    elsif phrase == 1
      "says \"I'll be back!\""
    else
      "says \"Hasta la vista, baby!\""
    end
  end
end

ducks ||= []
ducks << RealDuck.new
ducks << RubberDuck.new
ducks << WoodDuck.new
ducks << SpyDuck.new
ducks << TerminatorDuck.new

ducks.each do |duck|
  puts "\n#{duck.class} #{duck.swim}"
  puts "#{duck.class} #{duck.quack}"
  puts "#{duck.class} #{duck.fly}"
  puts "#{duck.class} #{duck.eat}"
  puts "#{duck.class} #{duck.shoot}"
  puts "#{duck.class} #{duck.photograph}"
end
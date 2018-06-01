#
# require_relative 'space_flight'
# require_relative 'spaceship'
# require_relative './run.rb'
require 'pry'

class Astronaut

    attr_accessor :age, :been_to_space
    attr_reader :name

    ALL = []

    def initialize(age, been_to_space, name)
      @age = age
      @been_to_space = been_to_space
      @name = name
      ALL << self
    end

    def self.all
      ALL
    end

    def self.eldest
      self.all.sort do |a,b|
        a.age <=> b.age
      end.last
    end

    def self.been_to_space?
      self.all.select do |astronaut_instance|
        astronaut_instance.been_to_space == true
      end
    end

    def self.find_all_by_name(name)
      self.all.select do |astronaut_instance|
        astronaut_instance.name == name
      end
    end

    def space_flights
      self.all.count do |space_flight_instance|
        space_flight_instance.astronaut == self
      end
    end

    def spaceships
        Space_Flight.all.select do |space_flight_instance|
          space_flight_instance.astronaut = self
        end
    end

    def add_astronaut(spaceship, mission_name)
      self.new(spaceship, mission_name)
    end

end

pry.start

# require_relative 'astronaut'
# require_relative 'space_flight'
require_relative './run.rb'
require 'pry'

class Spaceship

  attr_reader :name
  attr_accessor :been_to_space

  ALL = []

  def initialize(name, been_to_space)
    @name = name
    @been_to_space = been_to_space
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
      self.all.select do |spaceship_instance|
        spaceship_instance.name == name
      end
  end

  def self.fresh_spaceship
      self.all.select do |spaceship_instance|
        spaceship_instance.been_to_space == false
      end
  end

  def astronauts
      Space_Flight.all.select do |space_flight_instance|
          space_flight_instance.spaceship == self
      end.map do |space_flight_instance|
          space_flight_instance.astronaut
      end
  end

  #astronaut parameter must be an astronaut instance to associate
  def add_astronaut(astronaut, mission_name)
      self.new(astronaut, mission_name)
  end

end

Pry.start

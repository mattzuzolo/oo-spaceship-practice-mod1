# require_relative 'astronaut'
# require_relative 'spaceship'
require_relative './run.rb'
require 'pry'

class Space_Flight

  attr_reader :spaceship, :astronaut, :mission_name

  ALL = []

  def initialize(spaceship, astronaut, mission_name)
    @spaceship = spaceship
    @astronaut = astronaut
    @mission_name = mission_name
    ALL << self
  end

  def self.all
    ALL
  end

  def self.mission_names
    #Should puts "The mission name of this spaceship is {insert mission name here}" for every Space_Flight
    puts "The mission name of this spaceship is #{self.mission_name}"
  end


  #managed by attr_reader
  # def astronaut
  # end
  # def spaceship
  # end


end

Pry.start

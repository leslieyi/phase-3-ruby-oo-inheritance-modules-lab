require 'pry'

class Song
  attr_accessor :name, :artist

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods

  @@songs = []

  
  def self.all
    @@songs
  end
  # def initialize
  #   @@songs << self
  # end
  
  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end

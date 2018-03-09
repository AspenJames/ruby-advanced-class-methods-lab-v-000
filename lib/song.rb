# class Song
#   attr_accessor :name, :artist_name
#   @@all = []
#
#   def self.all
#     @@all
#   end
#
#   def save
#     self.class.all << self
#   end
#
#   def self.create
#     song = Song.new
#     song.save
#     song
#   end
#
#   def self.new_by_name(name)
#     song = Song.create
#     song.name = name
#   end
#
#   def self.find_by_name(name)
#     @@all.detect{|s| s.name == name}
#   end
#
#   def self.find_or_create_by_name(name)
#     self.class.find_by_name || self.class.create_by_name
#   end
#
#   def self.alphabetical
#     songs = self.class.all.select{|s| s.name}.sort
#   end
# end



class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    song.save
    song
  end

  def self.new_by_name(name)
    song = Song.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = Song.create
    song.name = name
    song
  end

  def self.find_by_name(name)
    self.class.all.detect{|s| s.name == name}
  end

end

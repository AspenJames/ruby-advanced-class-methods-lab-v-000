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
  # def self.alphabetical
  #   songs = self.class.all.select{|s| s.name}.sort
  # end
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
    self.all.detect{|s| s.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def self.alphabetical
    songs = self.all.collect{|s| s.name}
    songs.sort!
    songs.collect{|s| Song.find_by_name(s)}
  end

  def self.new_from_filename(filename)
    filename.chomp!(".mp3")
    file_arr = filename.split(" - ")
    song = Song.new_by_name(file_arr[1])
    song.artist_name = file_arr[0]
    song
  end

  def self.create_from_filename(filename)
    filename.chomp!(".mp3")
    file_arr = filename.split(" - ")
    song = Song.create_by_name(file_arr[1])
    song.artist_name = file_arr[0]
    song    
  end

end

class Song

attr_accessor :name, :artist

def initialize(name)
@name = name
@artist = artist
end


<<<<<<< HEAD

def self.new_by_filename(filename)
artist, song = filename.split(" - ")
new_song = self.new(song)
new_song.artist_name = artist
new_song
end




def artist_name=(name)
self.artist = Artist.find_or_create_by_name(name)
artist.add_song(self)
end

=======
=begin
def self.new_by_filename(filename)
artist, song = filename.split(" - ")
new_song = self.new(song)
new_song.artist = Artist.find_or_create_by_name(name)
new_song
end
=end

def self.new_by_filename(filename)
  song_name = filename.split(" - ")[1]
  new_song = self.new(song_name)
  new_song.artist_name = filename.split(" - ")[0]
  new_song
end

=begin
def self.artist_name=(name)
self.artist = Artist.find_or_create_by_name(name)
end
=end

 	def artist_name=(name)
	  if (self.artist.nil?)
		  self.artist = Artist.find_or_create_by_name(name)
	  else
		  self.artist.name = name
	  end
  end
>>>>>>> 52a67f875278f463f57d707820ee59cc93c7e5b0


end

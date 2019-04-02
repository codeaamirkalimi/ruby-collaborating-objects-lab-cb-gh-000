class Artist
	attr_accessor :name, :songs
	@@all = []
	def initialize(name)
		@name = name
		@songs = []
		self.save
	end

	def add_song(song)
		@songs << song
	end

		def songs
			@songs
		end

	def self.all
		@@all
	end

	def self.find_or_create_by_name(name)
		@@all.find{|artist| artist.name == name} || self.new(name)
	end

	def save
		@@all << self
	end

	def print_songs
    @songs.map{|s| puts "#{s.name}"}
  end
end
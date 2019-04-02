class MP3Importer
	attr_accessor :path, :files

	def initialize(path)
		@path = path
	end

	def files
    @files = Dir["#{@path}/*"].map {|file| file.gsub("#{@path}/", "")}
  end

	def import
  #  @files.each {|f| Song.new_by_filename(f)}
  files.each{|f| Song.new_by_filename(f)}
  end

end

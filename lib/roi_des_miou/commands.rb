module RoiDesMiou
  
  module Commands
    # Require files from directory
    Dir["#{File.dirname(__FILE__)}/commands/*.rb"].each { |file| require file }
    
    @commands = [
      About,
      Poll,
      Idee,
    ]

    def self.include!
      @commands.each do |command|
        RoiDesMiou::BOT.include!(command)
      end
    end
  end
end

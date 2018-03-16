module RoiDesMiou
  
  # Module for RDP events.
  module Events
    # Require files from directory
    Dir["#{File.dirname(__FILE__)}/events/*.rb"].each { |file| require file }

  @events = [
      Mention,
      BotReady
  ]

    def self.include!
      @events.each do |event|
        RoiDesMiou::BOT.include!(event)
      end
    end
  end
end

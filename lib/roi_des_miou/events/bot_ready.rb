module RoiDesMiou
  module Events
    
    module BotReady
      extend Discordrb::EventContainer
      
      ready do |event|
				BOT.game = "triinoxys.fr | #{CONFIG.prefix}help"
      end
    end
  end
end

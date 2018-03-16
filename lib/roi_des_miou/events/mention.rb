module RoiDesMiou
  
  module Events
    # Responds on mention.
    module Mention
      extend Discordrb::EventContainer
      mention do |event|

        event.respond("Roi des Miou v#{VERSION} à votre service!  \n `#{CONFIG.prefix}help` pour la liste des commandes :desktop:")
      end
    end
  end
end
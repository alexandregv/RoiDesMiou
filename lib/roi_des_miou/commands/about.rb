module RoiDesMiou

  module Commands

    # Prints most useful information about the bot.
    module About
      extend Discordrb::Commands::CommandContainer
      command(:about, description: 'Affiche les informations du bot.') do |event|

        event.channel.send_embed do |e|
          e.color = 5800090
          e.author = {
            icon_url: BOT.profile.avatar_url,
            name: 'Roi des Miou',
            url: 'https://triinoxys.fr'
          }
          e.description = "Je suis le **Roi des Miou**. Mon but est d'animer le serveur et de répondre à *tous* vos besoins!"

          e.add_field name: '__Infos:__', value: "**Développeur:** <@131218864234168321>  \n**Propriétaire de l'instance:** <@#{CONFIG.owner_id}>  \n**GitHub:** [github.com/TriiNoxYs/RoiDesMiou](https://github.com/TriiNoxYs/RoiDesMiou)  \n**Discord:** [discord.gg/sKYmk9c](https://discord.gg/sKYmk9c)  \n**Mail:** contact@triinoxys.fr", inline: true

          e.footer = { text: "Roi des Miou v#{VERSION} by TriiNoxYs" }
        end
      end
    end
  end
end

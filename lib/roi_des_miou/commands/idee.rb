module RoiDesMiou

  module Commands

    module Idee
      extend Discordrb::Commands::CommandContainer

      command([:idee, :idée], description: 'Propose une idée pour le discord, le stream ou autre :)', usage: '!idee <discord | stream> <idée..>', min_args: 2) do |event, type, *args|
        event.message.delete

        idee = args.join(' ')

        message = event.server.text_channels.select{ |channel| channel.id == 423830139722268682 }[0].send_embed do |e|
          e.color = 5800090

          e.author = {
            icon_url: event.user.avatar_url,
            name: event.user.name,
          }

          e.title = "Idée pour le #{type.upcase}"
          e.description = idee
        end

        response = event.respond("Votre idée a bien été proposée! <#423830139722268682>")

        Thread.new {
          Thread.current[:discordrb_name] = 'react-delay'
          message.react("👍")
          sleep(0.3)
          message.react("👎")
        }.join

        Thread.new {
          Thread.current[:discordrb_name] = 'delete-delay'
          sleep 3.5
          response.delete
        }.join

        return
      end

    end
  end
end

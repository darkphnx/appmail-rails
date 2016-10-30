module AppMail
  module Rails
    class ActionMailerDeliveryMethod

      def initialize(settings)
        @settings = settings
      end

      def settings
        @settings
      end

      def deliver!(message)
        client.send_raw_message do |m|
          m.mail_from(message.from.first)
          [message.to, message.cc, message.bcc].flatten.compact.uniq.each do |address|
            m.rcpt_to(address)
          end
          m.data(message.to_s)
        end
      end

      private

      def client
        @client ||= AppMail::Client.new(@settings[:host] || "api.appmail.io", @settings[:server_key])
      end

    end
  end
end

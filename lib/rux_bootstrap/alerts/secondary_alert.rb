module RuxBootstrap
  module Alerts
    class SecondaryAlert < Alert
      def initialize
        super({ flavor: "secondary" })
      end
    end
  end
end

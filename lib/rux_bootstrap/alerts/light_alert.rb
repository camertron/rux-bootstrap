module RuxBootstrap
  module Alerts
    class LightAlert < Alert
      def initialize
        super({ flavor: "light" })
      end
    end
  end
end

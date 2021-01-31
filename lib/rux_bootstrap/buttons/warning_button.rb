module RuxBootstrap
  module Buttons
    class WarningButton < Button
      def initialize(**kwargs)
        super({ **kwargs, flavor: "warning" })
      end
    end
  end
end

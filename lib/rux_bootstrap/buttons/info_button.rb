module RuxBootstrap
  module Buttons
    class InfoButton < Button
      def initialize(**kwargs)
        super({ **kwargs, flavor: "info" })
      end
    end
  end
end

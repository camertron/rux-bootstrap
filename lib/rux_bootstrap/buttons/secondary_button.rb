module RuxBootstrap
  module Buttons
    class SecondaryButton < Button
      def initialize(**kwargs)
        super({ **kwargs, flavor: "secondary" })
      end
    end
  end
end

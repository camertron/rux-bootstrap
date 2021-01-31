module RuxBootstrap
  module Buttons
    class LightButton < Button
      def initialize(**kwargs)
        super({ **kwargs, flavor: "light" })
      end
    end
  end
end

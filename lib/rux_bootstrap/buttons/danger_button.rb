module RuxBootstrap
  module Buttons
    class DangerButton < Button
      def initialize(**kwargs)
        super({ **kwargs, flavor: "danger" })
      end
    end
  end
end

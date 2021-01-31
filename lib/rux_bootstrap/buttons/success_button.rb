module RuxBootstrap
  module Buttons
    class SuccessButton < Button
      def initialize(**kwargs)
        super({ **kwargs, flavor: "success" })
      end
    end
  end
end

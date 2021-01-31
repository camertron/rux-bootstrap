module RuxBootstrap
  module Forms
    class FormRow < Component
      def initialize(form:, **params)
        @form = form
        @params = params
      end
    end
  end
end

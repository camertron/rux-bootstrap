module RuxBootstrap
  module Forms
    class InlineForm < Form
      def initialize(**builder_params)
        class_names = ['form-inline', *(builder_params[:class] || [])]
        super(**builder_params, class: class_names)
      end
    end
  end
end

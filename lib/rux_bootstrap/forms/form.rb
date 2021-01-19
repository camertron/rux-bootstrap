module RuxBootstrap
  module Forms
    class Form < Component
      include ActionView::Helpers::FormHelper
      include Rails.application.routes.url_helpers

      def initialize(**builder_params)
        @builder_params = builder_params
      end

      def render_in(view_context, &block)
        # Sort of a hack to prevent ViewComponent::Base from raising an error
        # when form_with calls Base's `controller' method.
        @view_context = view_context

        # Ok, so this is a weird one. It's not possible to call form_with in
        # `call' below because component blocks are evaluated in the opposite
        # order render calls are made in. Render calls are evaluated from
        # outermost to innermost, but component blocks are evaluated in
        # reverse, i.e. inner to outer. I'm not 100% sure why that's the
        # case, but it sort of intuitively makes sense since blocks have to
        # be evaluated before/during render calls and can themselves render
        # other components. In any case, this means components nested inside
        # the <Form> tags won't have access to the form builder (i.e. @builder
        # will be nil). To mitigate, we have to expose it here in render_in,
        # which gets called in the correct order. Kind of a hack, but I'm not
        # sure how else to do it.
        form_with(**@builder_params) do |form_builder|
          @builder = form_builder
          super
        end
      end

      def call
        content
      end

      # The "object name" is the name of the model that's passed into
      # form_with, eg. if you write form_with model: Foo.new, the object name
      # will be "foo."
      def object_name
        @builder.object_name
      end

      def row_class_names
        @row_class_names ||= []
      end

      def label_class_names
        @label_class_names ||= []
      end

      def input_class_names
        @input_class_names ||= []
      end
    end
  end
end

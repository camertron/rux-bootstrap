module RuxBootstrap
  module Forms
    class TextInput < Input
      private

      def tag
        @tag ||= ActionView::Helpers::Tags::TextField.new(
          @form.object_name, @field, self, {
            class: normalize_class_names('form-control', size_class_name),
            readonly: @readonly,
            placeholder: @placeholder
          }
        )
      end
    end
  end
end

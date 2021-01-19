module RuxBootstrap
  module Forms
    class TextAreaInput < Input
      DEFAULT_ROWS = 2

      def initialize(rows: DEFAULT_ROWS, **kwargs)
        @rows = rows
        super(**kwargs)
      end

      private

      def tag
        @tag ||= ActionView::Helpers::Tags::TextArea.new(
          @form.object_name, @field, self, {
            class: normalize_class_names('form-control', size_class_name),
            readonly: @readonly,
            placeholder: @placeholder,
            rows: @rows
          }
        )
      end
    end
  end
end

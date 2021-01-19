module RuxBootstrap
  module Forms
    class TextAreaInputRow < InputRow
      DEFAULT_ROWS = 2

      def initialize(rows: DEFAULT_ROWS, **kwargs)
        @rows = rows
        super(**kwargs)
      end

      private

      def tag
        @tag ||= ActionView::Helpers::Tags::TextArea.new(
          @form.object_name, @field, self, { class: 'form-control', rows: @rows }
        )
      end
    end
  end
end

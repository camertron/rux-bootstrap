module RuxBootstrap
  module Forms
    class TextInputRow < InputRow
      private

      def tag
        @tag ||= ActionView::Helpers::Tags::TextField.new(
          @form.object_name, @field, self, { class: 'form-control' }
        )
      end
    end
  end
end

module RuxBootstrap
  module Forms
    class TextInput < Input
      private

      def tag
        @tag ||= ActionView::Helpers::Tags::TextField.new(
          @form.object_name, @field, self, { class: 'form-control' }
        )
      end
    end
  end
end

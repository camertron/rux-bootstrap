module RuxBootstrap
  module Forms
    class EmailInput < Input
      private

      def tag
        @tag ||= ActionView::Helpers::Tags::EmailField.new(
          @form.object_name, @field, self, { class: 'form-control' }
        )
      end
    end
  end
end

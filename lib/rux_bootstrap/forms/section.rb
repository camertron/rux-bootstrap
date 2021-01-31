module RuxBootstrap
  module Forms
    class Section < Component
      def initialize(form:, label: nil)
        @form = form
        @label = label
      end

      def call
        label = if @label
          render(Label.new(class_names: @form.label_class_names)) {
            @label
          }
        end
        section = Rux.tag("div", class: normalize_class_names(*@form.input_class_names)) {
          content
        }
        if label
          label << section
        else
          section
        end
      end
    end
  end
end

module RuxBootstrap
  module Forms
    class TextAreaInputRow < FormRow
      def call
        render(Row.new(class_names: @form.row_class_names)) {
          render(TextAreaInput.new(form: @form, **@params))
        }
      end
    end
  end
end

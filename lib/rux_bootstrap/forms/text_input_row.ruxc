module RuxBootstrap
  module Forms
    class TextInputRow < FormRow
      def call
        render(Row.new(class_names: @form.row_class_names)) {
          render(TextInput.new(form: @form, **@params))
        }
      end
    end
  end
end

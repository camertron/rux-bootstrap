module RuxBootstrap
  module Forms
    class EmailInputRow < FormRow
      def call
        render(Row.new(class_names: @form.row_class_names)) {
          render(EmailInput.new(form: @form, **@params))
        }
      end
    end
  end
end

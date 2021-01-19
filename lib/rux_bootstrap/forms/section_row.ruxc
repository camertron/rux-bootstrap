module RuxBootstrap
  module Forms
    class SectionRow < FormRow
      def call
        render(Row.new(class_names: @form.row_class_names)) {
          render(Section.new(form: @form, **@params)) {
            content
          }
        }
      end
    end
  end
end

module RuxBootstrap
  module Forms
    class Input < Component
      def initialize(form:, field:, size: :default, class_names: [], label: nil, readonly: false, placeholder: nil)
        @form = form
        @field = field
        @size = size
        @class_names = class_names
        @label = label
        @readonly = readonly
        @placeholder = placeholder
      end

      def call
        label = if @label
          render(Label.new(for_id: tag.send(:tag_id), class_names: @form.label_class_names, size: @size)) {
            @label
          }
        end
        class_names = [*@class_names, *@form.input_class_names]
        input = Rux.tag("div", class: normalize_class_names(class_names)) {
          tag.render
        }
        if label
          label << input
        else
          input
        end
      end
      private

      def tag
        raise(NotImplementedError, "'#{__method__}' should be defined in " "derived classes")
      end

      def size_class_name
        case @size
        when :large
          "form-control-lg"
        when :small
          "form-control-sm"
        end
      end
    end
  end
end

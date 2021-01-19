module RuxBootstrap
  module Forms
    class Label < Component
      def initialize(for_id: nil, size: :default, class_names: [])
        @for_id = for_id
        @size = size
        @class_names = class_names
      end

      def call
        class_names = [size_class_name, *@class_names]
        Rux.tag("label", for: @for_id || "", class: normalize_class_names(class_names)) {
          content
        }
      end
      private

      def size_class_name
        case @size
        when :large
          "col-form-label-lg"
        when :small
          "col-form-label-sm"
        end
      end
    end
  end
end

module RuxBootstrap
  module Forms
    class Row < Component
      def initialize(class_names: [])
        @class_names = class_names
      end

      def call
        Rux.tag("div", class: normalize_class_names("form-group", *@class_names)) {
          content
        }
      end
    end
  end
end

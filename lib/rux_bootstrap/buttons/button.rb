module RuxBootstrap
  module Buttons
    class Button < Component
      attr_reader(:flavor, :type, :outline, :size, :block_level, :active, :disabled, :class_names)

      def initialize(flavor:, type: "button", outline: false, size: :normal, block_level: false, active: false, disabled: false, class_names: [])
        @flavor = flavor
        @type = type
        @outline = outline
        @size = size
        @block_level = block_level
        @active = active
        @disabled = disabled
        @class_names = class_names
      end

      def call
        classes = ["btn", flavor_class, size_class, block_class, active_class, *class_names]
        classes.compact!
        if disabled
          Rux.tag("button", class: classes.join(" "), type: type, role: "button", disabled: "disabled") {
            content
          }
        else
          Rux.tag("button", class: classes.join(" "), type: type, role: "button") {
            content
          }
        end
      end
      private

      def flavor_class
        if outline
          "btn-outline-#{flavor}"
        else
          "btn-#{flavor}"
        end
      end

      def size_class
        case size
        when :large
          "btn-lg"
        when :small
          "btn-sm"
        else
          nil
        end
      end

      def block_class
        if block_level
          "btn-block"
        else
          nil
        end
      end

      def active_class
        if active
          "active"
        else
          nil
        end
      end
    end
  end
end

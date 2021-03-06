module RuxBootstrap
  module Alerts
    class AlertLink < Component
      attr_reader(:href, :class_names)

      def initialize(href: "#", class_name: "")
        @href = href
        @class_names = class_name.squeeze(" ").strip.split(" ") + ["alert-link"]
      end

      def call
        Rux.tag("a", href: href, class: class_names.join(" ")) {
          content
        }
      end
    end
  end
end

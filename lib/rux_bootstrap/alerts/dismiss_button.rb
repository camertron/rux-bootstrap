module RuxBootstrap
  module Alerts
    class DismissButton < Component
      attr_reader(:text, :aria_label)

      def initialize(text: "&times;", aria_label: "Close")
        @text = text
        @aria_label = aria_label
      end

      def call
        Rux.tag("button", type: "button", class: "close", data_dismiss: "alert", aria_label: aria_label) {
          Rux.tag("span", aria_hidden: "true") {
            text
          }
        }
      end
    end
  end
end

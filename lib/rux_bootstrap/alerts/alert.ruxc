module RuxBootstrap
  module Alerts
    class Alert < Component
      attr_reader(:flavor)

      def initialize(flavor:)
        @flavor = flavor
      end

      def call
        Rux.tag("div", class: "alert alert-#{flavor}", role: "alert") {
          content
        }
      end
    end
  end
end

module RuxBootstrap
  class Column
    attr_reader :width, :breakpoint

    def initialize(width, breakpoint)
      @width = width
      @breakpoint = breakpoint
    end

    def to_class_names
      @class_names ||= [
        if breakpoint && !breakpoint.empty?
          "col-#{breakpoint}-#{width}"
        else
          "col-#{width}"
        end
      ]
    end
  end
end

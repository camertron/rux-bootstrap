module RuxBootstrap
  module ColumnExp
    WIDTH_TOTAL = 12

    class << self
      def parse(col_str)
        cols = col_str.downcase.split('+').map do |col|
          width, breakpoint = col.scan(/\A(\d+)(sm|md|lg|xl)?\z/).first

          unless width
            raise(
              'Column expression must be of the form "n+m" where n and m '\
              'are widths followed by breakpoint abbreviations, eg. "9sm+3lg"'
            )
          end

          Column.new(width.to_i, breakpoint)
        end

        total = cols.inject(0) { |sum, col| sum + col.width }

        if total != WIDTH_TOTAL
          raise "Column sizes must add up to #{WIDTH_TOTAL}, got #{total}"
        end

        cols
      end
    end
  end
end

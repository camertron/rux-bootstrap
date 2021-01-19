module RuxBootstrap
  module Forms
    class HorizontalForm < Form
      ROW_CLASS_NAMES = %w(form-row).freeze

      def initialize(columns: '3sm+9sm', **kwargs)
        cols = column_exp(columns)

        if cols.size != 2
          raise "Form must have exactly two columns, got #{cols.size}"
        end

        @label_width, @input_width = cols

        super(**kwargs)
      end

      def row_class_names
        ROW_CLASS_NAMES
      end

      def label_class_names
        @label_class_names ||= @label_width.to_class_names
      end

      def input_class_names
        @input_class_names ||= @input_width.to_class_names
      end
    end
  end
end

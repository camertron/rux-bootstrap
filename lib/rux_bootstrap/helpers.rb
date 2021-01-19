module RuxBootstrap
  module Helpers
    def normalize_class_names(*class_names)
      class_names
        .flat_map { |cn| cn.split(/\s+/) }
        .uniq
        .join(' ')
    end

    def column_exp(exp)
      ColumnExp.parse(exp)
    end
  end
end

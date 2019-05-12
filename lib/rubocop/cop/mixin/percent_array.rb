# frozen_string_literal: true

module RuboCop
  module Cop
    module PercentArray
      def message(_node)
        if style == :percent
          self.class::PERCENT_YAYOI_MSG
        else
          self.class::ARRAY_YAYOI_MSG
        end
      end
    end
  end
end

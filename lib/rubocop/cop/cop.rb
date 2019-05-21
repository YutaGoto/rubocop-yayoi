# frozen_string_literal: true

module RuboCop
  module Cop
    class Cop
      def message(_node = nil)
        if self.class.const_defined?(:YAYOI_MSG)
          self.class::YAYOI_MSG
        else
          self.class::MSG
        end
      end
    end
  end
end

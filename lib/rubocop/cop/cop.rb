# frozen_string_literal: true

module RuboCop
  module Cop
    class Cop
      def message(_node = nil)
        msg = self.class::MSG
        msg = self.class::YAYOI_MSG if msg.blank?
        msg
      end
    end
  end
end

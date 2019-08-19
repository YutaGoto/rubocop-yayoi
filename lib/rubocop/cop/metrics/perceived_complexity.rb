# frozen_string_literal: true

module RuboCop
  module Cop
    module Metrics
      class PerceivedComplexity < Cop
        YAYOI_MSG = "ζ*'ヮ')ζ＜うっうー！%<method>sの複雑度がとても高いですよー！" \
              '[%<complexity>d/%<max>d]'
      end
    end
  end
end

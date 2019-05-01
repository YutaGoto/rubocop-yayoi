# frozen_string_literal: true

module RuboCop
  module Cop
    module Metrics
      class CyclomaticComplexity < Cop
        MSG = "ζ*'ヮ')ζ＜うっうー！%<method>sの循環的複雑度がとても高いですよー！" \
        '[%<complexity>d/%<max>d]'.freeze
      end
    end
  end
end

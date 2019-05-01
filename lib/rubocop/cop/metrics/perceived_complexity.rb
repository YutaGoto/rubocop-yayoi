# frozen_string_literal: true

module RuboCop
  module Cop
    module Metrics
      class PerceivedComplexity < Cop
        MSG = "ζ*'ヮ')ζ＜うっうー！%<method>sの複雑度がとても高いですよー！ [%<complexity>d/%<max>d]".freeze
      end
    end
  end
end

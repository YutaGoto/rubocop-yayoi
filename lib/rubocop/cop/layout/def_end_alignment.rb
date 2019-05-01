# frozen_string_literal: true

module RuboCop
  module Cop
    module Layout
      class DefEndAlignment < Cop
        include EndKeywordAlignment
        MSG = "ζ*'ヮ')ζ＜うっうー！ %d, %dにある`end`が%d, %dにある`%s`とずれていますよー！".freeze
      end
    end
  end
end

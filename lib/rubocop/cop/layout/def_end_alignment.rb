# frozen_string_literal: true

module RuboCop
  module Cop
    module Layout
      class DefEndAlignment < Cop
        include EndKeywordAlignment
        YAYOI_MSG = "ζ*'ヮ')ζ＜うっうー！%d, %dにある`end`が%d, %dにある`%s`とずれていますよー！"
      end
    end
  end
end

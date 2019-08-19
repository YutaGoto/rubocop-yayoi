# frozen_string_literal: true

module RuboCop
  module Cop
    module Style
      class UnneededInterpolation < Cop
        YAYOI_MSG = "ζ*'ヮ')ζ＜うっうー！文字列の式展開よりも`to_s`を使いましょうねー！"
      end
    end
  end
end

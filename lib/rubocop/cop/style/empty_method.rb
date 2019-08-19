# frozen_string_literal: true

module RuboCop
  module Cop
    module Style
      class EmptyMethod < Cop
        YAYOI_MSG_COMPACT = "ζ*'ヮ')ζ＜うっうー！なにも書いてないメソッドは1行で書きましょうねー！"
        YAYOI_MSG_EXPANDED = "ζ*'ヮ')ζ＜うっうー！なにも書いてないメソッドは1行で書かないで、" \
                       '`end`を次の行に書きましょうねー！'

        def message(_node)
          compact_style? ? YAYOI_MSG_COMPACT : YAYOI_MSG_EXPANDED
        end
      end
    end
  end
end

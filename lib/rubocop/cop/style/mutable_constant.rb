# frozen_string_literal: true

module RuboCop
  module Cop
    module Style
      class MutableConstant < Cop
        YAYOI_MSG = "ζ*'ヮ')ζ＜うっうー！書き換え可能な定数を`.freeze`で更新できないようにしましょうねー！"
      end
    end
  end
end

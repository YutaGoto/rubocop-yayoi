# frozen_string_literal: true

module RuboCop
  module Cop
    module Style
      class EmptyMethod < Cop
        MSG_COMPACT = "ζ*'ヮ')ζ＜うっうー！なにも書いてないメソッドは1行で書きましょうねー！".freeze
        MSG_EXPANDED = "ζ*'ヮ')ζ＜うっうー！なにも書いてないメソッドは1行で書かないで、" \
                       '`end`を次の行に書きましょうねー！'.freeze
      end
    end
  end
end

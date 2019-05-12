# frozen_string_literal: true

module RuboCop
  module Cop
    module Style
      class WordArray < Cop
        PERCENT_YAYOI_MSG = "ζ*'ヮ')ζ＜うっうー！" \
                            '文字列だけだけの配列には`%w`か`%W`を使いましょうねー！'.freeze
        ARRAY_YAYOI_MSG = "ζ*'ヮ')ζ＜うっうー！配列には`[]`を使いましょうねー！".freeze
      end
    end
  end
end

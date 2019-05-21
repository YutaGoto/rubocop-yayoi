# frozen_string_literal: true

module RuboCop
  module Cop
    module Style
      class SymbolArray < Cop
        PERCENT_YAYOI_MSG = "ζ*'ヮ')ζ＜うっうー！" \
                            'シンボルだけだけの配列には`%w`か`%W`を使いましょうねー！'.freeze
        ARRAY_YAYOI_MSG = "ζ*'ヮ')ζ＜うっうー！配列には`[]`を使いましょうねー！".freeze

        def message(_node)
          if style == :percent
            PERCENT_YAYOI_MSG
          else
            ARRAY_YAYOI_MSG
          end
        end
      end
    end
  end
end

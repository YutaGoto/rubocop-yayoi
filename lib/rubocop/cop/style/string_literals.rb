# frozen_string_literal: true

module RuboCop
  module Cop
    module Style
      class StringLiterals < Cop
        def message(_node)
          if style == :single_quotes
            "ζ*'ヮ')ζ＜うっうー！特殊記号とか補間がないときはシングルクォーテーションで囲いましょうねー"
          else
            "ζ*'ヮ')ζ＜うっうー！バックスラッシュでシングルクォーテーションが必要でない限りダブルクォーテーションで囲いましょうねー"
          end
        end
      end
    end
  end
end

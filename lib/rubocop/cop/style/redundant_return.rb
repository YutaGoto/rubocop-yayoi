# frozen_string_literal: true

module RuboCop
  module Cop
    module Style
      class RedundantReturn < Cop
        YAYOI_MSG = "ζ*'ヮ')ζ＜うっうー！冗長な`return`がありますよー！".freeze
        YAYOI_MULTI_RETURN_MSG = "ζ*'ヮ')ζ＜うっうー！複数の値を返すときは配列を使いましょうねー！".freeze

        def message(node)
          if !allow_multiple_return_values? && node.children.size > 1
            "#{YAYOI_MSG} #{YAYOI_MULTI_RETURN_MSG}"
          else
            YAYOI_MSG
          end
        end
      end
    end
  end
end

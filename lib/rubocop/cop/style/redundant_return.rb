# frozen_string_literal: true

module RuboCop
  module Cop
    module Style
      class RedundantReturn < Cop
        MSG = "ζ*'ヮ')ζ＜うっうー！冗長な`return`がありますよー！".freeze
        MULTI_RETURN_MSG = "ζ*'ヮ')ζ＜うっうー！複数の値を返すときは配列を使いましょうねー！".freeze
      end
    end
  end
end

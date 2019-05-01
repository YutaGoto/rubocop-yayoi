# frozen_string_literal: true

module RuboCop
  module Cop
    module Lint
      class AmbiguousBlockAssociation < Cop
        MSG = "ζ*'ヮ')ζ＜うっうー！" \
        'ブロックが`%<method>s`メソッドの呼び出しにちゃんと関連連れられているかわからないですー。' \
              'ちゃんと`%<param>s`にカッコを使いましょうねー！'.freeze
      end
    end
  end
end

# frozen_string_literal: true

module RuboCop
  module Cop
    module Lint
      class AmbiguousBlockAssociation < Cop
        YAYOI_MSG = "ζ*'ヮ')ζ＜うっうー！" \
                    'ブロックが`%<method>s`メソッドの呼び出しにちゃんと関連連れられているかわからないですー。' \
                    'ちゃんと`%<param>s`にカッコを使いましょうねー！'

        def message(send_node)
          block_param = send_node.last_argument

          format(YAYOI_MSG, param: block_param.source,
                            method: block_param.send_node.source)
        end
      end
    end
  end
end

# frozen_string_literal: true

module RuboCop
  module Cop
    module Style
      class UnneededCondition < Cop
        YAYOI_MSG = "ζ*'ヮ')ζ＜うっうー！ダブルパイプ(`||`)を使いましょうねー！"
        YAYOI_UNNEEDED_CONDITION = "ζ*'ヮ')ζ＜うっうー！いらない条件がありますよー！"

        def message(node)
          if node.modifier_form? || !node.else_branch
            YAYOI_UNNEEDED_CONDITION
          else
            YAYOI_MSG
          end
        end
      end
    end
  end
end

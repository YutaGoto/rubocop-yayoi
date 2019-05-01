# frozen_string_literal: true

module RuboCop
  module Cop
    module Layout
      class SpaceAroundOperators < Cop
        def offense_message(operator, with_space, right_operand)
          if operator.is?('**')
            "ζ*'ヮ')ζ＜うっうー！`**`のまわりにスペースがありますよー！" unless with_space.is?('**')
          elsif with_space.source !~ /^\s.*\s$/
            "ζ*'ヮ')ζ＜うっうー！`#{operator.source}`のまわりにスペースがありませんよー！"
          elsif excess_leading_space?(operator, with_space) ||
                excess_trailing_space?(right_operand, with_space)
            "ζ*'ヮ')ζ＜うっうー！`#{operator.source}`のまわりはスペース1こあけましょうねー！"
          end
        end
      end
    end
  end
end

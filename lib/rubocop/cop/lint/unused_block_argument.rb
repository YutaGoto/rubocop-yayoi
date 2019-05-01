# frozen_string_literal: true

module RuboCop
  module Cop
    module Lint
      class UnusedBlockArgument < Cop
        def message(variable)
          message = "ζ*'ヮ')ζ＜うっうー！#{variable_type(variable)}が使われてないですよー！" \
          " - `#{variable.name}`"

          if variable.explicit_block_local_variable?
            message
          else
            augment_message(message, variable)
          end
        end

        def variable_type(variable)
          if variable.explicit_block_local_variable?
            'ブロック内のローカル変数'
          else
            'ブロック変数'
          end
        end

        def message_for_normal_block(variable, all_arguments)
          if all_arguments.none?(&:referenced?) &&
             !define_method_call?(variable)
            '引数を省略できますよー！'
          else
            "使っていないものは `_` か `_#{variable.name}` にしましょうねー！"
          end
        end
      end
    end
  end
end

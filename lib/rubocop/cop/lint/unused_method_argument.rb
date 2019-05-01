# frozen_string_literal: true

module RuboCop
  module Cop
    module Lint
      class UnusedMethodArgument < Cop

        def message(variable)
          message = String.new("ζ*'ヮ')ζ＜うっうー！使っていない引数がありますよー - `#{variable.name}`！")

          unless variable.keyword_argument?
            message << " もし使わないなら、`_`か`_#{variable.name}`のようにしましょうねー！"
          end

          scope = variable.scope
          all_arguments = scope.variables.each_value.select(&:method_argument?)

          if all_arguments.none?(&:referenced?)
            message << " 引数がなんでもいいなら、メソッド名を `#{scope.name}(*)` に変えてもいいですよー！"
          end

          message
        end

      end
    end
  end
end

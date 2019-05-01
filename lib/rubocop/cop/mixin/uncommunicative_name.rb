# frozen_string_literal: true

module RuboCop
  module Cop
    module UncommunicativeName
      LENGTH_MSG = "ζ*'ヮ')ζ＜うっうー！" \
                   '%<name_type>sの長さは最低でも%<min>s文字以上にしましょうねー！'.freeze

      def name_type(node)
        @name_type ||= begin
          case node.type
          when :block then 'ブロックのパラメータ'
          when :def, :defs then 'メソッドのパラメータ'
          end
        end
      end
    end
  end
end

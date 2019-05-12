# frozen_string_literal: true

module RuboCop
  module Cop
    module UncommunicativeName
      YAYOI_LENGTH_MSG = "ζ*'ヮ')ζ＜うっうー！" \
                         '%<name_type>sの長さは最低でも%<min>s文字以上にしましょうねー！'.freeze

      def name_type(node)
        @name_type ||= begin
          case node.type
          when :block then 'ブロックのパラメータ'
          when :def, :defs then 'メソッドのパラメータ'
          end
        end
      end

      def length_offense(node, range)
        add_offense(node, location: range,
                          message: format(YAYOI_LENGTH_MSG,
                                          name_type: name_type(node).capitalize,
                                          min: min_length))
      end
    end
  end
end

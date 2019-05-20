# frozen_string_literal: true

module RuboCop
  module Cop
    module Lint
      class IneffectiveAccessModifier < Cop
        YAYOI_MSG = "ζ*'ヮ')ζ＜うっうー！%<line>d行目にある`%<modifier>s`は" \
                    'シングルトンメソッドの%<modifier>sを作りませんよー！' \
                    '代わりに%<alternative>s'.freeze
        YAYOI_ALTERNATIVE_PRIVATE = '`private_class_method`か`private`を' \
                                    '`class << self`ブロックの内部に置きましょー！'.freeze
        YAYOI_ALTERNATIVE_PROTECTED = '`protected`を' \
                                      '`class << self`ブロックの内部に置きましょー！'.freeze

        def format_message(modifier)
          visibility = modifier.method_name
          alternative = if visibility == :private
                          YAYOI_ALTERNATIVE_PRIVATE
                        else
                          YAYOI_ALTERNATIVE_PROTECTED
                        end
          format(YAYOI_MSG, modifier: visibility,
                            line: modifier.location.expression.line,
                            alternative: alternative)
        end
      end
    end
  end
end

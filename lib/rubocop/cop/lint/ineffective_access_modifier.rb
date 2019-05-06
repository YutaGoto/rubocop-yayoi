# frozen_string_literal: true

module RuboCop
  module Cop
    module Lint
      class IneffectiveAccessModifier < Cop
        MSG = "ζ*'ヮ')ζ＜うっうー！%<line>d行目にある`%<modifier>s`は" \
              'シングルトンメソッドの%<modifier>sを作りませんよー！' \
              '代わりに%<alternative>s'.freeze
        ALTERNATIVE_PRIVATE = '`private_class_method`か`private`を' \
                              '`class << self`ブロックの内部に置きましょー！'.freeze
        ALTERNATIVE_PROTECTED = '`protected`を' \
                                '`class << self`ブロックの内部に置きましょー！'.freeze
      end
    end
  end
end

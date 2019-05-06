# frozen_string_literal: true

module RuboCop
  module Cop
    module Style
      class CommentAnnotation < Cop
        MSG = "ζ*'ヮ')ζ＜うっうー！`%<keyword>s`のような注釈は全部大きい文字にして" \
              'コロン、スペースのあとにコメントを書きましょうねー！'.freeze
        MISSING_NOTE = "ζ*'ヮ')ζ＜うっうー！`%<keyword>s`があるけども、肝心のコメントがないですよー！".freeze
      end
    end
  end
end

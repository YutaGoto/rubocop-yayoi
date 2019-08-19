# frozen_string_literal: true

module RuboCop
  module Cop
    module Style
      class Documentation < Cop
        YAYOI_MSG = "ζ*'ヮ')ζ＜うっうー！%<type>sのドキュメントのコメントを書きましょうねー"

        def check(node, body, type)
          return if namespace?(body)
          return if documentation_comment?(node) || nodoc_comment?(node)
          return if compact_namespace?(node) &&
                    nodoc_comment?(outer_module(node).first)

          add_offense(node,
                      location: :keyword,
                      message: format(YAYOI_MSG, type: type))
        end
      end
    end
  end
end

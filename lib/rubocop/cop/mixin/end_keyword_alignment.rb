# frozen_string_literal: true

module RuboCop
  module Cop
    module EndKeywordAlignment
      YAYOI_MSG = "ζ*'ヮ')ζ＜うっうー！ %<end_line>d, %<end_col>dにある`end`が" \
                  '%<align_line>d, %<align_col>d' \
                  'にある`%<source>s`とずれていますよー！'.freeze

      def add_offense_for_misalignment(node, align_with)
        end_loc = node.loc.end
        msg = format(YAYOI_MSG, end_line: end_loc.line,
                                end_col: end_loc.column,
                                source: align_with.source,
                                align_line: align_with.line,
                                align_col: align_with.column)
        add_offense(node, location: end_loc, message: msg)
      end
    end
  end
end

# frozen_string_literal: true

module RuboCop
  module Cop
    module Layout
      module EmptyLinesAroundBody
        YAYOI_MSG_EXTRA = "ζ*'ヮ')ζ＜うっうー！%<kind>sに空行が見つかりましたよー！"
        YAYOI_MSG_MISSING = "ζ*'ヮ')ζ＜うっうー！%<kind>sのまわりに空行がないですよー！"
        YAYOI_MSG_DEFERRED = "ζ*'ヮ')ζ＜うっうー！%<type>sの前に空行がないですよー！"

        def check_source(style, line_no, desc)
          case style
          when :no_empty_lines
            check_line(style, line_no, message(YAYOI_MSG_EXTRA, desc), &:empty?)
          when :empty_lines
            check_line(style, line_no, message(YAYOI_MSG_MISSING, desc)) do |l|
              !l.empty?
            end
          end
        end

        def deferred_message(node)
          format(YAYOI_MSG_DEFERRED, type: node.type)
        end

        def message(type, desc)
          kind = self.class::KIND
          kind = self.class::YAYOI_KIND if kind.blank?
          format(type, kind: kind, location: desc)
        end
      end
    end
  end
end

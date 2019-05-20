# frozen_string_literal: true

module RuboCop
  module Cop
    module Layout
      class IndentationWidth < Cop
        YAYOI_MSG = "ζ*'ヮ')ζ＜うっうー！" \
                    '%<configured_indentation_width>dスペースを使いましょうねー' \
                    '(%<indentation>dはだめですよー)'.freeze
      end
    end
  end
end

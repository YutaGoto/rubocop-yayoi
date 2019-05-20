# frozen_string_literal: true

module RuboCop
  module Cop
    module SpaceAfterPunctuation
      YAYOI_MSG = "ζ*'ヮ')ζ＜うっうー！%<token>sの後ろにスペースがないですよー！".freeze

      def investigate(processed_source)
        each_missing_space(processed_source.tokens) do |token|
          add_offense(token, location: token.pos,
                             message: format(YAYOI_MSG, token: kind(token)))
        end
      end
    end
  end
end

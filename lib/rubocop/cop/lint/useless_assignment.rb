# frozen_string_literal: true

module RuboCop
  module Cop
    module Lint
      class UselessAssignment < Cop
        YAYOI_MSG = "ζ*'ヮ')ζ＜うっうー！使っていない変数がありますよー！ - `%<variable>s`.".freeze

        def message_for_useless_assignment(assignment)
          variable = assignment.variable

          format(YAYOI_MSG, variable: variable.name) +
            message_specification(assignment, variable).to_s
        end
      end
    end
  end
end

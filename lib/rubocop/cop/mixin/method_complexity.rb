# frozen_string_literal: true

module RuboCop
  module Cop
    module MethodComplexity
      def class_msg
        msg = self.class::MSG
        msg = self.class::YAYOI_MSG if msg.blank?
        msg
      end

      def check_complexity(node, method_name)
        # Accepts empty methods always.
        return unless node.body

        max = cop_config['Max']
        complexity, abc_vector = complexity(node.body)

        return unless complexity > max

        msg = format(class_msg,
                     method: method_name,
                     complexity: complexity,
                     abc_vector: abc_vector,
                     max: max)

        add_offense(node, message: msg) do
          self.max = complexity.ceil
        end
      end
    end
  end
end

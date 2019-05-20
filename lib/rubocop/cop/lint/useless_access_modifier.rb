# frozen_string_literal: true

module RuboCop
  module Cop
    module Lint
      class UselessAccessModifier < Cop
        YAYOI_MSG = "ζ*'ヮ')ζ＜うっうー！`%<current>s`は意味がないですよー！".freeze

        def check_node(node)
          return if node.nil?

          if node.begin_type?
            check_scope(node)
          elsif node.send_type? && node.bare_access_modifier?
            add_offense(
              node,
              message: format(YAYOI_MSG, current: node.method_name)
            )
          end
        end

        def check_scope(node)
          cur_vis, unused = check_child_nodes(node, nil, :public)

          return unless unused

          add_offense(unused, message: format(YAYOI_MSG, current: cur_vis))
        end

        def check_send_node(node, cur_vis, unused)
          if node.bare_access_modifier?
            check_new_visibility(node, unused, node.method_name, cur_vis)
          elsif node.method_name == :private_class_method && !node.arguments?
            add_offense(
              node,
              message: format(YAYOI_MSG, current: node.method_name)
            )
            [cur_vis, unused]
          end
        end

        def check_new_visibility(node, unused, new_vis, cur_vis)
          if new_vis == cur_vis
            add_offense(node, message: format(YAYOI_MSG, current: cur_vis))
          else
            if unused
              add_offense(unused, message: format(YAYOI_MSG, current: cur_vis))
            end
            unused = node
          end

          [new_vis, unused]
        end
      end
    end
  end
end

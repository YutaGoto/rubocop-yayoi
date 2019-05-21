require 'rubocop'

require_relative 'rubocop/cop/cop'

require_relative 'rubocop/formatter/progress_formatter'
require_relative 'rubocop/formatter/simple_text_formatter'

require_relative 'rubocop/cop/layout/def_end_alignment'
require_relative 'rubocop/cop/layout/empty_line_between_defs'
require_relative 'rubocop/cop/layout/empty_lines_around_method_body'
require_relative 'rubocop/cop/layout/empty_lines'
require_relative 'rubocop/cop/layout/indentation_consistency'
require_relative 'rubocop/cop/layout/indentation_width'
require_relative 'rubocop/cop/layout/initial_indentation'
require_relative 'rubocop/cop/layout/space_around_operators'

require_relative 'rubocop/cop/lint/ambiguous_block_association'
require_relative 'rubocop/cop/lint/ineffective_access_modifier'
require_relative 'rubocop/cop/lint/unreachable_code'
require_relative 'rubocop/cop/lint/unused_block_argument'
require_relative 'rubocop/cop/lint/unused_method_argument'
require_relative 'rubocop/cop/lint/useless_access_modifier'
require_relative 'rubocop/cop/lint/useless_assignment'

require_relative 'rubocop/cop/mixin/empty_lines_around_body'
require_relative 'rubocop/cop/mixin/end_keyword_alignment'
require_relative 'rubocop/cop/mixin/method_complexity'
require_relative 'rubocop/cop/mixin/space_after_punctuation'
require_relative 'rubocop/cop/mixin/uncommunicative_name'

require_relative 'rubocop/cop/metrics/cyclomatic_complexity'
require_relative 'rubocop/cop/metrics/line_length'
require_relative 'rubocop/cop/metrics/perceived_complexity'

require_relative 'rubocop/cop/naming/ascii_identifiers'
require_relative 'rubocop/cop/naming/class_and_module_camel_case'
require_relative 'rubocop/cop/naming/predicate_name'
require_relative 'rubocop/cop/naming/variable_name'

require_relative 'rubocop/cop/style/and_or'
require_relative 'rubocop/cop/style/ascii_comments'
require_relative 'rubocop/cop/style/colon_method_call'
require_relative 'rubocop/cop/style/comment_annotation'
require_relative 'rubocop/cop/style/def_with_parentheses'
require_relative 'rubocop/cop/style/documentation'
require_relative 'rubocop/cop/style/double_negation'
require_relative 'rubocop/cop/style/empty_method'
require_relative 'rubocop/cop/style/mutable_constant'
require_relative 'rubocop/cop/style/numeric_literals'
require_relative 'rubocop/cop/style/redundant_return'
require_relative 'rubocop/cop/style/string_literals'
require_relative 'rubocop/cop/style/symbol_array'
require_relative 'rubocop/cop/style/unneeded_condition'
require_relative 'rubocop/cop/style/unneeded_interpolation'
require_relative 'rubocop/cop/style/word_array'

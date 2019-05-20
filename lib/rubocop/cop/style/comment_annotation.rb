# frozen_string_literal: true

module RuboCop
  module Cop
    module Style
      class CommentAnnotation < Cop
        YAYOI_MSG = "ζ*'ヮ')ζ＜うっうー！`%<keyword>s`のような注釈は全部大きい文字にして" \
                    'コロン、スペースのあとにコメントを書きましょうねー！'.freeze
        YAYOI_MISSING_NOTE = "ζ*'ヮ')ζ＜うっうー！" \
                             '`%<keyword>s`があるけども、肝心のコメントがないですよー！'.freeze

        def investigate(processed_source)
          processed_source.comments.each_with_index do |comment, index|
            next unless first_comment_line?(processed_source.comments, index) ||
                        inline_comment?(comment)

            margin, first_word, colon, space, note = split_comment(comment)
            next unless annotation?(comment) &&
                        !correct_annotation?(first_word, colon, space, note)

            length = concat_length(first_word, colon, space)
            add_offense(
              comment,
              location: annotation_range(comment, margin, length),
              message: format(message(note), keyword: first_word)
            )
          end
        end

        private

        def message(note)
          note ? YAYOI_MSG : YAYOI_MISSING_NOTE
        end
      end
    end
  end
end

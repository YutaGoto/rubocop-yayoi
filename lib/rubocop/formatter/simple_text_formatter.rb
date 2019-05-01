# frozen_string_literal: true

module RuboCop
  module Formatter
    class SimpleTextFormatter < BaseFormatter
      class Report
        def summary
          if @correction_count > 0
            "ζ*'ヮ')ζ＜うっうー！#{@file_count}ファイルチェックしましたよー！\r\n" \
            "#{offences_text}\r\n" \
            "ζ*'ヮ')ζ＜うっうー#{corrections}直しましたよー！"
          else
            "ζ*'ヮ')ζ＜うっうー！#{@file_count}ファイルチェックしましたよー！\r\n#{offences_text}"
          end
        end

        private

        def offenses
          text = "#{@offense_count}こ"
          color = :red

          colorize(text, color)
        end

        def offences_text
          if @offense_count.zero?
            "ζ*'ヮ')ζ＜うっうー！怪しいところはありませんでしたー！"
          else
            "ζ*'ヮ')ζ＜うっうー！#{offenses}怪しいですよー！"
          end
        end

        def corrections
          text = "#{@correction_count}こ"
          color = @correction_count == @offense_count ? :green : :cyan

          colorize(text, color)
        end
      end
    end
  end
end

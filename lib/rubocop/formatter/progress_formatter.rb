# frozen_string_literal: true

module RuboCop
  module Formatter
    class ProgressFormatter < ClangStyleFormatter
      def started(target_files)
        super
        @offenses_for_files = {}
        output.puts "ζ*'ヮ')ζ＜#{target_files.size}ファイルチェックしますよー！"
      end

      def finished(inspected_files)
        output.puts

        unless @offenses_for_files.empty?
          output.puts
          output.puts "ζ*'ヮ')ζ＜うっうー！！"
          output.puts

          @offenses_for_files.each do |file, offenses|
            report_file(file, offenses)
          end
        end

        super
      end
    end
  end
end

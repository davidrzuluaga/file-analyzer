require 'csv'

class FileAnalyzerJob < ApplicationJob
  queue_as :default

  def perform(file_path, file_analysis)
    puts "iniciando Job..."
    file_analysis.update(status: :processing)

    csv = CSV.new(file_path)
    csv.each do
      sleep 2
      file_analysis.update(analyzed_rows: file_analysis.analyzed_rows + 1)
    end

    file_analysis.update(status: :finished)
  end
end

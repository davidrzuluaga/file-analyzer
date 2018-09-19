require 'csv'

class FileAnalysesController < ApplicationController
  def create
        redirect_to file_analysis
  end

  def show
    @file_analysis = FileAnalysis.find(params[:id])
  end
end

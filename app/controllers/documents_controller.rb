class DocumentsController < ApplicationController

  def create
    @document = Document.new(params[:document])
    respond_to do |format|
      if @document.save
        format.json { render json: @document.to_json, status: :created, location: @document }
      else
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

end
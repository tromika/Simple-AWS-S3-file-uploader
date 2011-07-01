class UploadController < ApplicationController
  def create
     filename=params[:picture].original_filename
     AWS::S3::S3Object.store(filename, params[:picture], params[:bucket])
  end
  
  def index
      
  end
end
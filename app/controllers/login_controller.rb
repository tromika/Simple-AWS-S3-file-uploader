class LoginController < ApplicationController
  
  def create
    
   AWS::S3::Base.establish_connection!(
    :access_key_id     => params[:access_key],
    :secret_access_key => params[:secret_key]
       )
    redirect_to :controller => :bucket, :action => :index
  end
  
  def index
    
  end
end
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  #Get all receipes
  get "/receipes" do
    receipe = Receipe.all
    receipe.to_json
  end

  #Get single receipe
  get "/receipes/:id" do
    receipe = Receipe.find(params[:id])
    receipe.to_json
  end


end

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/receipes" do
    receipe = Receipe.all
    receipe.to_json
  end

  

end

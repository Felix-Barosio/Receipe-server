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

  #create a new receipe
  post "/receipes" do
    receipe = Receipe.create(
      meal_name: params[:meal_name],
      image_url: params[:image_url],
      ingredients: params[:ingredients],
      instructions: params[:instructions],
      origin: params[:origin],
      category: params[:category],
      video: params[:video]
    )
    receipe.to_json
  end

end

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
      tags: params[:tags],
      video: params[:video]
    )
    receipe.to_json
  end

  #patch a recipe
  patch "/receipes/:id" do
    receipe = Receipe.find(params[:id])
    receipe.update(
      meal_name: params[:meal_name],
      image_url: params[:image_url],
      ingredients: params[:ingredients],
      instructions: params[:instructions],
      origin: params[:origin],
      category: params[:category],
      tags: params[:tags],
      video: params[:video]
    )
    receipe.to_json
  end

  #delete a recipe
  delete "/receipes/:id" do
    receipe = Receipe.find(params[:id])
    receipe.destroy
    receipe.to_json
  end

  get "/messages" do
    message = Message.all
    message.to_json
  end
  
  post "/messages" do
    message = Message.create(
      name: params[:name],
      email: params[:email],
      message: params[:message]
    )
    message.to_json
  end

end

require 'gossip'

class ApplicationController < Sinatra::Base
  
  get '/' do
    erb :index, locals: {gossips: Gossip.all}
  end

  get '/gossips/new/' do
  erb :new_gossip
  end

  post '/gossips/new/' do
    puts Gossip.new(params["gossip_author"], params["gossip_content"]).save
    redirect '/'
  end


  get '/gossips/:id/' do
   erb :show 
  end

  post '/gossips/:id/edit/' do
    puts Gossip.new(params["gossip_author"], params["gossip_content"]).update
    erb :edit
  end
  end





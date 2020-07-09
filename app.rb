require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    
    erb :reverse
  end

  post '/reverse' do
    str = params[:string] # can also do "string" since text type is text? 
    @rev = str.reverse #  changing this to an instance variable allows our views to access the variable
    # puts rev
    erb :reversed
  end

  get '/friends' do
    # Write your code here!
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 
    'Malala Yousafzai', 'Sojourner Truth']
    erb :friends
  end
end
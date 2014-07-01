require 'sinatra'
require 'yaml'

get '/' do
  @data = YAML.load_file 'data.yml'
  erb :index
end

get '/date/:date' do
  date = Date.parse(params[:date])
  @data = YAML.load_file('data.yml')[date]
  erb :show
end

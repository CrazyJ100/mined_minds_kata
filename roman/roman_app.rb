require 'sinatra'
require_relative "roman_code.rb"
enable :sessions 

get '/' do
    erb :my_first_page, locals:{answer: " "}
end
post '/convert' do
    number = params[:number].to_i
    answer = roman_converter(number)
    session[:answer] = answer
    erb :my_first_page, locals:{answer: session[:answer]}
end